const conn = require("../connection/connectdb");
const jwt = require('jsonwebtoken')
// const queryExecuter = require('../queryExecute/queryExecuter')
const express = require("express");
const bcrypt = require("bcrypt");
const app = express();
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

//post login details
const loginHandler = async (req, res) => {
    try {
        const { email, password } = req.body;
        const ErrorHandler = {}
        let log_qry = `select * from users where email='${email}' and is_active = '1'`;
        const result = await queryExecuter(log_qry);
        if (result.length == 0) {
            ErrorHandler.message = "Invalid Login Credentials"
            return res.render("login", { flag: ErrorHandler });
        } else if (result[0].isActive == "0") {
            let id = result[0].id;
            return res.render("active", {
                activated: false,
                activationUrl: activationUrl,
                userID: id,
            });
        }
        let dbPassword = result[0].password;
        let UserData = result[0];
        // let username = UserData.username

        // console.log(UserData);

        const match = await bcrypt.compare(password, dbPassword);
        if (!match) {

            let error = true;
            return res.render("login", { error });

            // res.cookie('Access_token', token, { httpOnly: true })
        }

        // req.session.email = temp_email;

        let payload = { email };
        const session_token = jwt.sign(payload, "JWT_SECRET");
        req.session.email = session_token
        console.log(req.session);

        // var hour = 3600000
        // req.session.cookie.expires = new Date(Date.now() + hour)
        // req.session.cookie.maxAge = hour


        return res.redirect("/dashboard");



    } catch (error) {
        throw error;
    }
};



//get Login page
const loginGet = asyncHandler(async (req, res) => {
    let solve;
    let error;
    error = false;
    res.render("login", { error });

});


const getEmailCheckLogin = asyncHandler(async (req, res) => {
    //i need to show the post request for checkEmail fetch request
    const { data } = req.body
    console.log(data);
    const qry1 = `select * from users where email='${data}'`
    const oldUser = await queryExecuter(qry1)
    if (oldUser.length == 0) {
        let isNew = true
        res.json({ isNew });
    }
    else {
        let isNew = false
        res.json({ isNew });
    }

});

module.exports = {
    loginHandler,
    loginGet,
    getEmailCheckLogin
};