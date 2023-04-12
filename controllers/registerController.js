const { queryExec } = require('../connection/conn');
const jwt = require('jsonwebtoken')
// const queryExec = require('../queryExecute/queryExec')
const express = require('express')
const crypto = require('crypto');
const app = express();

const bcrypt = require('bcrypt');
const asyncHandler = require("express-async-handler");



const registerUser = async (req, res) => {
    //i need to show the post request for register page

    console.log("body", req.body);
    let sessionOtp = req.session.otp;
    if (sessionOtp == req.body.otp) {
        const { yyyy, mm, dd } = req.body
        let dob = `${yyyy}/${mm}/${dd}`
        try {
            const { name, email, password, uname,otp } = req.body
            async function register(name, email, password, uname, dob) {

                try {
                    let flag, tree
                    if (!(email && password && name && uname && dob)) {
                        tree = true
                        // return res.render('signup', { tree });
                    }
                    const qry1 = `select * from  users where email=? or user_name=?`

                    const oldUser = await queryExec(qry1, [email, uname])
                    if (oldUser.length != 0) {
                        flag = true
                        // return res.render('signup', { flag });
                    }
                    else {
                        const salt = await bcrypt.genSalt(15);
                        const hashedPassword = await bcrypt.hash(password, salt);
                        const qry = `INSERT INTO  users (name, email, password,user_name, birth_date,otp,is_active,created_at) VALUES (?, ?, ?, ?,?,?,?,NOW())`
                        const result = await queryExec(qry, [name, email, hashedPassword, uname,dob,otp,'1'])
                        if (result) {

                            let id = result.insertId
                            const token = crypto.randomBytes(32).toString('hex');

                            const activationUrl = `https://example.com/activate-account/${token}`;

                            // res.render('active', { activated: false, activationUrl: activationUrl, userID: id })
                        }
                    }
                } catch (error) {
                    throw error;
                }
            }

            register(name, email, password, uname, dob)

        } catch (error) {

        }
        res.json({ register: true })
    }
    else {
        res.json({ register: false })
    }
};

const getregisterUser = asyncHandler(async (req, res) => {
    //i need to show the get request for register page
    let flag, tree = false
    res.render('signup', { flag, tree })
    // res.render('register',{flag,tree})
});

const getEmailCheck = asyncHandler(async (req, res) => {
    //i need to show the post request for checkEmail fetch request

    const { data } = req.body
    const qry1 = `select * from users where email=?`
    const oldUser = await queryExec(qry1, [data])
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

    const { data } = req.body
    const qry1 = `select * from users where user_name=?`
    const oldUser = await queryExec(qry1, [data])
    if (oldUser.length == 0) {
        let isNew = true
        res.json({ isNew });
    }
    else {
        let isNew = false
        res.json({ isNew });
    }

});
const activeUser = async (req, res) => {
    //i need to show the post request for Active  request
    const userID = parseInt(req.query.id);
    const update_query = `UPDATE users SET is_active = '1' WHERE id = ?;`
    const result = await queryExec(update_query, [userID]);
    // res.render('activate_page', { activated: true });
    res.redirect('/user-login')
};



module.exports = { registerUser, getregisterUser, getEmailCheck, getUserNameCheck, activeUser }