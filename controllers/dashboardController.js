const conn = require('../connection/connectdb');
const queryExecuter = require('../queryExecute/queryExecuter')
const express = require('express')
const app = express();
const asyncHandler = require("express-async-handler");

const getDashboard = asyncHandler(async (req, res) => {
    //i need to show the get request for register page
    let flag = false
    const token =req.session.email
    if(!token){
        res.redirect('/user-login')
    }
    res.render('dashboard',{flag})
});



module.exports = { getDashboard }