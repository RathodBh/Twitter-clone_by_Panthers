const { queryExec } = require("../connection/conn");
const jwt = require('jsonwebtoken')
// const queryExec = require('../queryExecute/queryExec')
const express = require("express");
const bcrypt = require("bcrypt");
const app = express();
const bodyParser = require("body-parser");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const asyncHandler = require("express-async-handler");


//post login details
// const loginHandler = async (req, res) => {
//     try {
//         const { email, password } = req.body;
//         const ErrorHandler = {}
//         let log_qry = `select * from users where email='${email}' and is_active = '1'`;
//         const result = await queryExec(log_qry);
//         if (result.length == 0) {
//             return res.render("login", { error1: true});
//         } else if (result[0].isActive == "0") {
//             let id = result[0].id;
//             return res.render("active", {
//                 activated: false,
//                 activationUrl: activationUrl,
//                 userID: id,
//             });
//         }
//         let dbPassword = result[0].password;
//         let UserData = result[0];
//         // let username = UserData.username


//         const match = await bcrypt.compare(password, dbPassword);
//         if (!match) {

//             let error = true;
//             return res.render("login", { error1:true});

//             // res.cookie('Access_token', token, { httpOnly: true })
//         }

//         // req.session.email = temp_email;

//         let payload = { email };
//         const session_token = jwt.sign(payload, "JWT_SECRET");
//         req.session.user_id = result[0].id;
//         req.session.email = session_token;



//         var hour = 3600000
//         req.session.cookie.expires = new Date(Date.now() + hour)
//         req.session.cookie.maxAge = hour

//         return res.redirect('/dashboard')

//     } catch (error) {
//         console.log("came heer");
//         throw error;
//     }
// };

const loginHandler = async (req, res) => {
    try {
        const { email, password } = req.body;
        let query = `SELECT id,password,is_active FROM users where email=?;`;
        var user_login_details = await queryExec(query,[email]);
        if (user_login_details.length == 0) {
            res.send("WRONG EMAIL OR register first")
        } else if (user_login_details[0].is_active == "0") {
            let id = user_login_details[0].id;
            res.render("activateUser", { id })
        } else {
            var user_password = await bcrypt.compare(password, user_login_details[0].password)
            if (!user_password) {
                var loginAttemptQuery = `select login_attempts from users where email = ?`;
                var loginAttemptresult = await queryExec(loginAttemptQuery,[email]);
                var last_login_attempt_value = Number(loginAttemptresult[0].login_attempts);
                if (last_login_attempt_value < 3) {
                    var increment_login_attempts = ++last_login_attempt_value;
                    let remainingAttempts = 3 - last_login_attempt_value;
                    var update_login_attempts = `update users set login_attempts = ${increment_login_attempts}, login_time = NOW() where email =?`;
                    var update_result = await queryExec(update_login_attempts,[email]);
                    if (remainingAttempts > 0) {
                        // 
                        res.render('login', {error1:`You have entered wrong password. Now only ${remainingAttempts} attempts remaining.`})
                    } else {
                        res.render('login', {error1:`You’ve been temporarily locked out of your account for 2 hours. You can either try again in 2 hours or request a new password by clicking on forget password.`})
                    }
                } else {
                    res.render('login', {error1:`You are blocked for next 2 hours`});
                }
            } else {
                var login_time = `select cast((select DATE_ADD((select login_time from users where email = ?),interval 2 hour) as accountActivationTime) as time(0)) as loginActivationTime;`;
                var login_time_result = await queryExec(login_time,[email]);
                var loginActivationTime = login_time_result[0].loginActivationTime;
                var date;
                date = new Date();
                var hours;
                if (date.getHours() < 10) {
                    hours = "0" + date.getHours()
                } else {
                    hours = date.getHours()
                }
                var minutes = date.getMinutes();
                var seconds = date.getSeconds();
                var localTime = hours + ":" + minutes + ":" + seconds;

                let curAtt = await queryExec(`SELECT login_attempts FROM users WHERE email =?`,[email])
                if (curAtt[0].login_attempts >= 3) {
                    if (loginActivationTime < localTime) {
                        let resetLoginAttempts = `update users set login_attempts = 0 where email = ?`;
                        let resetLoginAttemptsResult = await queryExec(resetLoginAttempts,[email]);
                        let payload = { email };
                        const session_token = jwt.sign(payload, "JWT_SECRET");
                        req.session.user_id = user_login_details[0].id;
                        req.session.email = session_token;
                        var hour = 3600000
                        req.session.cookie.expires = new Date(Date.now() + hour)
                        req.session.cookie.maxAge = hour
                        return res.redirect('/dashboard')
                    } else {
                        let t = loginActivationTime;
                        let h = loginActivationTime.slice(0,2)
                        let m = loginActivationTime.slice(3,5)
                        let s = loginActivationTime.slice(6,8)
                        let am_pm = "AM"
                        if(h > 12){
                            am_pm = "PM"
                            h = h-12;
                            if(h<10){
                                h = "0" + h
                            }
                        }
                        console.log("HMS",h,m,s);
                        res.render('login',{error1:`Your account is blocked, try again at or after ${h}:${m}:${s} ${am_pm}`})
                    }
                }
                else {
                    let resetLoginAttempts = `update users set login_attempts = 0 where email = ?`;
                    let resetLoginAttemptsResult = await queryExec(resetLoginAttempts,[email]);
                    let payload = { email };
                    const session_token = jwt.sign(payload, "JWT_SECRET");
                    req.session.user_id = user_login_details[0].id;
                    req.session.email = session_token;
                    var hour = 3600000
                    req.session.cookie.expires = new Date(Date.now() + hour)
                    req.session.cookie.maxAge = hour
                    return res.redirect('/dashboard')
                }
            }
        }
    } catch (error) {
        throw error;
    }
};






//get Login page
const loginGet = asyncHandler(async (req, res) => {
    let solve;
    let error;
    error = false;
    res.render("login", { error1: "" });

});


const getEmailCheckLogin = asyncHandler(async (req, res) => {
    //i need to show the post request for checkEmail fetch request
    const { data } = req.body
    const qry1 = `select * from users where email=? or user_name=?`;
    const oldUser = await queryExec(qry1,[data,data])
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