const asyncHandler = require("express-async-handler");
const conn = require('../connection/connectdb');
// const queryExecuter = require('../queryExecute/queryExecuter')
const express = require('express')
const app = express();

const bcrypt = require('bcrypt');
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
const getlocation = asyncHandler(async (req, res) => {


})
const getSettings = asyncHandler(async (req, res) => {
    res.render('settings')

})
const accountInfo = asyncHandler(async (req, res) => {
    res.render('accountInfo')

})
const changePass = asyncHandler(async (req, res) => {
    res.render('changePass')

})
const checkOldPass = asyncHandler(async (req, res) => {

    let { data } = req.body;
   
    let msg = "Enter old Password"
    if (data == "") {
        return res.status(400).json({ msg, ans: false });
    }


    let user_id = req.session.user_id;
    let qry = `select * from users where id = ${user_id}`
    let exeqry = await queryExecuter(qry);
   

    if (exeqry.length == 0) {
        return res.json({ ans: false })
    }
    let password = exeqry[0].password;
    
    const match = await bcrypt.compare(data, password);
    console.log(match);
    if (match) {
        console.log("yesssssssssssssssssssssss");
        res.json({ ans: true })
    }
    else {
        console.log("nooooooooooooo");
        res.json({ ans: false })
    }

})

module.exports = { getlocation, getSettings, accountInfo, changePass, checkOldPass }