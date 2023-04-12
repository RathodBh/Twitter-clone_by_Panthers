const asyncHandler = require("express-async-handler");
const conn = require('../connection/conn');
const { queryExec } = require('../connection/conn');
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


const updatePwd = asyncHandler(async (req, res) => {

    const { data } = req.body
    console.log(data);
    const salt = await bcrypt.genSalt(15);
    const hashedPassword = await bcrypt.hash(data, salt);
    let qryupPwd = `update users set password="${hashedPassword}" where id=${req.session.user_id};`
    console.log(qryupPwd);
    let resultqry = await queryExecuter(qryupPwd);
    if (resultqry) {
        return res.json({ msg: "success" })
    }

    return res.json({
        msg: "fail"
    })


})
const updateUserName = asyncHandler(async (req, res) => {
    res.render('userNameUpt')
})
const updateUserNamepost = asyncHandler(async (req, res) => {
    const { data } = req.body
    console.log(data);
    let qryupPwd = `update users set user_name="${data}" where id=${req.session.user_id};`
    console.log(qryupPwd);
    let resultqry = await queryExecuter(qryupPwd);
    if (resultqry) {
        return res.json({ msg: "success" })
    }

    return res.json({
        msg: "fail"
    })

})

const getCountry = asyncHandler(async (req, res) => {
    res.render('country')
})
const getEmailChange = asyncHandler(async (req, res) => {
    res.render('updateEmail')
})
const postCountry = asyncHandler(async (req, res) => {

   const { data}= req.body;
   console.log(data);

   if(data=="everywhere"){
    return res.json({msd:false})
   }
   else{
    let ctrqry = await queryExec(`update users set country=? where id=?`,[data,req.session.user_id])
    return res.json({msd:true})
   }
})
module.exports = { getCountry, getlocation, getSettings, accountInfo, changePass, checkOldPass, updatePwd, updateUserName, updateUserNamepost, postCountry ,getEmailChange}