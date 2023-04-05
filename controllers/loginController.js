const conn = require("../connection/connectdb");
const jwt = require('jsonwebtoken')
const address = require('address')
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
            return res.render("login", { error1: true });
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
            return res.render("login", { error1: true });

            // res.cookie('Access_token', token, { httpOnly: true })
        }

        // req.session.email = temp_email;

        let payload = { email };
        const session_token = jwt.sign(payload, "JWT_SECRET");
        req.session.user_id = result[0].id;
        req.session.email = session_token;



        var hour = 3600000
        req.session.cookie.expires = new Date(Date.now() + hour)
        req.session.cookie.maxAge = hour

        // done by datta
        var ip1 = [];
        var ips = `select ip  from twitter_clone.users where email = "${email}"`;
        var ipres = await queryExecuter(ips)
        console.log('this is ipres((ip result)ip of user who is trying to login)');
        console.log(ipres);

        console.log('ip address is: ');
        var ip = address.ip();
        console.log(ip);
        if (ipres[0]['ip'] != '' ) {
            res.redirect('/forget')
        }
        else {
            console.log('ip is pushed in ip1, and value of resulting ip is below');
            ip1.push(ip)
            var insip = `update twitter_clone.users set ip = "${ip1}" where email = "${email}"`;
            await queryExecuter(insip);
            console.log(ip1);
            res.redirect('/dashboard')
        }

        // ip1.push(ip)
        // console.log('another ip address is: ');
        // console.log(ip1);
        // console.log('ip is entered');
        // if (ipres[0].ip != '' || ipres[0].length != 0) {
        //     return res.redirect('/user-login')
        // }


        // ip1.push(ipres[0].ip)





    } catch (error) {
        throw error;
    }
};



//get Login page
const loginGet = asyncHandler(async (req, res) => {
    let solve;
    let error;
    error = false;
    res.render("login", { error1: false });

});


const getEmailCheckLogin = asyncHandler(async (req, res) => {
    //i need to show the post request for checkEmail fetch request
    const { data } = req.body
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