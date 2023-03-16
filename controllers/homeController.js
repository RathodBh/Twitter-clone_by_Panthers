const express = require('express')
const app = express();
const asyncHandler = require("express-async-handler");
const conn = require('../connection/connectdb');
const queryExecuter = require('../queryExecute/queryExecuter')
const homePage = asyncHandler(async(req,res)=>{
    res.render('home')
})
module.exports = { homePage }
