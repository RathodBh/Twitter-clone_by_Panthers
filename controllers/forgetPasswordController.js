const conn = require("../connection/connectdb");
const jwt = require('jsonwebtoken')
// const queryExecuter = require('../queryExecute/queryExecuter')
const express = require("express");
const bcrypt = require("bcrypt");
const app = express();
const nodemailer = require("nodemailer");
const bodyParser = require("body-parser");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const asyncHandler = require("express-async-handler");
async function queryExecuter(query) {
    return new Promise((resolve, rejects) => {
        conn.query(query, (err, result) => {
            if (err) {
                rejects(err);
            }
            resolve(result);
        });
    });
}


const getForgetPasswordPage = asyncHandler(async (req, res) => {
    res.render("forgetPassword")

});

const getMail = asyncHandler(async (req, res)=>{
    console.log("in get mail controller");
    var mail = req.query.val;
    var otp = Math.floor(100000 + Math.random() * 900000);
    var mailExistStatus;
    var dbMailsQry = `select email from  users;`;
    var resultmail = await queryExecuter(dbMailsQry);
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
        console.log({ info });
    }).catch(console.error);
    var sql = `update  users set otp= "${otp}" where id="39";`;
    var result = await queryExecuter(sql);
    res.json({ result, mailExistStatus });
})


const getOtp = asyncHandler(async (req, res) => {
    var otp = req.query.otp;
    var sql = `select otp from  users where id="39";`;
    var result = await queryExecuter(sql);
    if (otp == result[0].otp) {
        res.json({ verified: true })
    } else {
        res.json({ verified: false })
    }
})

const resetPassword = asyncHandler(async(req, res) => {
    var newPassword = req.query.newPassword;
    var email = req.query.email;
    const salt = await bcrypt.genSalt(15);
    const hashedPassword = await bcrypt.hash(newPassword, salt);
    const qry = `update  users set password = "${hashedPassword}" where email="${email}"`
    const result = await queryExecuter(qry);
    console.log("password updated");
    // res.render("dashboard")
})


module.exports = {
    getForgetPasswordPage,
    getMail,
    getOtp,
    resetPassword
};