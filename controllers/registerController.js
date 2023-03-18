const conn = require('../connection/connectdb');
// const queryExecuter = require('../queryExecute/queryExecuter')
const express = require('express')
const crypto = require('crypto');
const app = express();
const bcrypt = require('bcrypt');
const asyncHandler = require("express-async-handler");
async function queryExecuter(query) {
    return new Promise((resolve, rejects) => {
        conn.query(query, (err, result) => {
            if (err) {
                rejects(err);
            }
            resolve(result);
        });
    })
}

const registerUser = async (req, res) => {
    //i need to show the post request for register page
    console.log("now");
    const {yyyy,mm,dd}  = req.body
    let dob = `${yyyy}/${mm}/${dd}`
    try {
        const { name,email,password, cpassword,uname }  = req.body
        console.log(name, email,password, cpassword,uname,dob );
        async function register(name, email, password,uname,dob) {

            try {
                let flag,tree
                if (!(email && password && name && uname && dob)) {
                    tree=true
                    return res.render('signup', { tree });
                }
                const qry1 = `select * from twitter_clone.users where email='${email}' or username='${uname}'`
                console.log(qry1);
                const oldUser = await queryExecuter(qry1)
                console.log(oldUser);
                if (oldUser.length != 0) {
                     flag = true
                    return res.render('signup', { flag });
                }
                else {
                    const salt = await bcrypt.genSalt(15);
                    const hashedPassword = await bcrypt.hash(password, salt);
                    const qry = `INSERT INTO twitter_clone.users (name, email, password,username, birth_date,created_at) VALUES ('${name}', '${email}', '${hashedPassword}', '${uname}','${dob}',NOW())`
                    console.log(qry);
                    const result = await queryExecuter(qry)

                    if (result) {

                        // console.log(result);
                        let id = result.insertId
                        // console.log(id);
                        const token = crypto.randomBytes(32).toString('hex');

                        const activationUrl = `https://example.com/activate-account/${token}`;

                        res.render('active', { activated: false, activationUrl: activationUrl, userID: id });


                    }
                }
            } catch (error) {
                throw error;
            }
        }

        register(name, email, password,uname,dob)

    } catch (error) {

    }
};

const getregisterUser = asyncHandler(async (req, res) => {
    //i need to show the get request for register page
    let flag,tree = false
    res.render('signup',{flag,tree})
    // res.render('register',{flag,tree})
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
const activeUser = async (req, res) => {
    //i need to show the post request for Active  request
    const userID = req.query.id;
    console.log(userID);
    const update_query = `UPDATE users SET is_active = '1' WHERE (id = ${parseInt(userID)});`
    const result = await queryExecuter(update_query);
    // res.render('activate_page', { activated: true });
    res.redirect('/user-login')
};



module.exports = { registerUser, getregisterUser,getEmailCheck,getUserNameCheck,activeUser }