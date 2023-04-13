const {queryExec} = require("../connection/conn")
const jwt = require('jsonwebtoken')
const express = require("express");
const bcrypt = require("bcrypt");
const app = express();
const nodemailer = require("nodemailer");
const bodyParser = require("body-parser");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const asyncHandler = require("express-async-handler");


const getForgetPasswordPage = asyncHandler(async (req, res) => {
    res.render("forgetPassword")

});
var emailID = ""
const getMail = asyncHandler(async (req, res)=>{
    var mail = req.query.val;
    emailID = mail
    var otp = Math.floor(100000 + Math.random() * 900000);
    var mailExistStatus;
    var dbMailsQry = `select email from  users;`;
    var resultmail = await queryExec(dbMailsQry);
    if (resultmail.find(e => e.email == mail)) {
        mailExistStatus = true;
    } else {
        mailExistStatus = false;
    }
    const transporter = nodemailer.createTransport({
        host: 'smtp.gmail.com',
        port: 587,
        secure: false,
        auth: {
            user: 'mehtajaini179@gmail.com',
            pass: 'lpnsowiqbkasqaje',
        },
    });
    transporter.sendMail({
        from: "mehtajaini179@gmail.com", // sender address
        to: `${mail}`, // list of receivers
        subject: "test", // Subject line
        html: `<h2>Your OTP : ${otp}</h2>`, // html body
    }).then(info => {
        // console.log({ info });
    }).catch(console.error);
    var sql = `update users set otp= ? where email=?`;
    var result = await queryExec(sql,[otp,emailID]);
    res.json({ result, mailExistStatus });
})


const getOtp = asyncHandler(async (req, res) => {
    var otp = req.query.otp;
    var sql = `select otp from  users where email=?`;
    var result = await queryExec(sql,[emailID]);
    if (otp == result[0].otp) {
        res.json({ verified: true })
    } else {
        res.json({ verified: false })
    }
})

const resetPassword = asyncHandler(async(req, res) => {
    var newPassword = req.query.newPassword;
    // var email = req.query.email;
    const salt = await bcrypt.genSalt(15);
    const hashedPassword = await bcrypt.hash(newPassword, salt);
    const qry = `update users set password = ?, login_attempts='0' where email= ?`
    const result = await queryExec(qry,[hashedPassword,emailID]);
    res.json({resetPassword: true})
})


module.exports = {
    getForgetPasswordPage,
    getMail,
    getOtp,
    resetPassword
};