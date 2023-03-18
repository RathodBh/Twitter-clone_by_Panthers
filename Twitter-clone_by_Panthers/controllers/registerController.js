const conn = require('../connection/connectdb');
const queryExecuter = require('../queryExecute/queryExecuter')
const express = require('express')
const app = express();
const asyncHandler = require("express-async-handler");
const registerUser = asyncHandler(async (req, res) => {
    //i need to show the post request for register page
    console.log("now");
    try {
        const { name, email, password, cpassword, } = req.body;
        async function register(name, email, password, cpassword) {
            try {
                if (!(email && password && name && cpassword)) {
                    res.status(400).send("All input is required");
                }
                const qry1 = `select * from Jwt_prac.users where email='${email}'`
                // console.log(qry1);
                const oldUser = await queryExecuter(qry1)
                // console.log(oldUser);
                if (oldUser.length != 0) {
                    let flag = true
                    return res.render('register', { flag });
                }
                else {
                    const salt = await bcrypt.genSalt(10);
                    const hashedPassword = await bcrypt.hash(password, salt);
                    const hashedcPassword = await bcrypt.hash(cpassword, salt);
                    const qry = `INSERT INTO Jwt_prac.users (name, email, password,cpassword) VALUES ('${name}', '${email}', '${hashedPassword}', '${hashedcPassword}')`
                    const result = await queryExecuter(qry)

                    if (result) {

                        // console.log(result);
                        let id = result.insertId
                        // console.log(id);
                        const token = crypto.randomBytes(32).toString('hex');

                        const activationUrl = `https://example.com/activate-account/${token}`;

                        res.render('activate_page', { activated: false, activationUrl: activationUrl, userID: id });


                    }
                }
            } catch (error) {
                throw error;
            }
        }

        register(name, email, password, cpassword)

    } catch (error) {

    }
});

const getregisterUser = asyncHandler(async (req, res) => {
    //i need to show the get request for register page
    let flag = false
    res.render('register',{flag})
});

const getEmailCheck = asyncHandler(async (req, res) => {
    //i need to show the post request for checkEmail fetch request
    console.log("i am google i am cool");
    const { data } = req.body
    const qry1 = `select * from Jwt_prac.users where email='${data}'`
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
const getUserNameCheck = asyncHandler(async (req, res) => {
    //i need to show the post request for checkEmail fetch request
    console.log("i am google i am cool");
    const { data } = req.body
    const qry1 = `select * from Jwt_prac.users where username='${data}'`
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



module.exports = { registerUser, getregisterUser,getEmailCheck,getUserNameCheck }