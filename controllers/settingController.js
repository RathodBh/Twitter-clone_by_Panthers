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
const getchangeUserEmail = asyncHandler(async (req, res) => {
    res.render('changEmail')

})
const checkOldPass = asyncHandler(async (req, res) => {

    let { data } = req.body;

    let msg = "Enter old Password"
    if (data == "") {
        return res.status(400).json({ msg, ans: false });
    }


    let user_id = req.session.user_id;
    let qry = `select * from users where id =?`
    let exeqry = await queryExec(qry,[user_id]);


    if (exeqry.length == 0) {
        return res.json({ ans: false })
    }
    let password = exeqry[0].password;

    const match = await bcrypt.compare(data, password);
    if (match) {
       
        res.json({ ans: true })
    }
    else {
       
        res.json({ ans: false })
    }

})


const updatePwd = asyncHandler(async (req, res) => {

    const { data } = req.body
    const salt = await bcrypt.genSalt(15);
    const hashedPassword = await bcrypt.hash(data, salt);
   
  
    let resultqry = await queryExec(`update users set password=? where id=?;`,[hashedPassword,req.session.user_id]);
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


    let resultqry = await queryExec(`update users set user_name=? where id=?;`,[data,req.session.user_id]);
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
    res.render('checkPass')
})
const postCountry = asyncHandler(async (req, res) => {

   const { data}= req.body;


   if(data=="everywhere"){
    return res.json({msd:false})
   }
   else{
    let ctrqry = await queryExec(`update users set country=? where id=?`,[data,req.session.user_id])
    return res.json({msd:true})
   }
})
const updateEml = asyncHandler(async (req, res) => {

   const { data}= req.body;
   if(data){
    let ctrqry = await queryExec(`update users set email=? where id=?`,[data,req.session.user_id])
    return res.json({msd:true})
   }
})


module.exports = {updateEml, getchangeUserEmail,getCountry, getlocation, getSettings, accountInfo, changePass, checkOldPass, updatePwd, updateUserName, updateUserNamepost, postCountry ,getEmailChange}