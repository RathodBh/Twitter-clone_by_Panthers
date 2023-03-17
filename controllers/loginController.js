const conn = require('../connection/connectdb');
const queryExecuter = require('../queryExecute/queryExecuter')
const express = require('express')
const app = express();
const asyncHandler = require("express-async-handler");

//post login details
const loginHandler = asyncHandler(async (req, res) => {
    try {

        const { email, password } = req.body
        // console.log(email, password);
        let log_qry = `select * from Jwt_prac.users where email='${email}' and isActive = '1'`;

        const result = await queryExecuter(log_qry);
        // console.log(result);
        if (result.length == 0) {
            return res.status(401).send('Invalid credentials');
        }
        else if (result[0].isActive == '0') {
            let id = result[0].id
            // console.log(id);
            return res.render('activate_page', { activated: false, activationUrl: activationUrl, userID: id })
        }
        // console.log(result);
        let dbPassword = result[0].password;
        let UserData = result[0];
        async function checkUser(email, password) {
            const match = await bcrypt.compare(password, dbPassword);
            if (match) {
                const token = jwt.sign({ UserData }, process.env.JWT_SECRET, { expiresIn });
                // res.status(201).json(token);
                res.cookie('Access_token', token, { httpOnly: true })
                res.redirect('/home')
            }
            else {
                let error = true
                res.render("login", { error })
            }
        }
        checkUser(email, password)
    } catch (error) {
        throw error
    }
})
//get Login page
const loginGet = asyncHandler(async (req, res) => {

    let solve
    let error
    // console.log("here");
    const token = await req.cookies['Access_token'];
    if (token) {    
        try {

            solve = jwt.verify(token, process.env.JWT_SECRET);

        } catch (error) {
            err = false;
            res.render('login', { error })
        }
    }

    if (token && solve) {
        res.redirect('/home')
    }
    else {
        error = false;
        res.render('login', { error })
    }

})


module.exports = {
    loginHandler,
    loginGet
}