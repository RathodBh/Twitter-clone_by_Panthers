const conn = require('../connection/connectdb');
const queryExecuter = require('../queryExecute/queryExecuter')
const express = require('express')
const app = express();
const asyncHandler = require("express-async-handler");


const getDashboard = asyncHandler(async (req, res) => {
    //i need to show the get request for register page
    let flag = false;
    console.log("hello");
    res.render('dashboard',{flag})
});

const tweetit = asyncHandler(async function (req, res)  {
    // console.log(req.file.path);
    // i need to show the get request for tweet page
    let flag = false;
    console.log("tweet");
    res.render('tweet',{flag})
});

// const tweetit1 = asyncHandler(async function (req, res)  {
//     // console.log(req.file.path);
//     // i need to show the get request for tweet page
//     let flag = false;
//     console.log("hello,hii");
//     res.render('dashboard',{flag})
// });



module.exports = { getDashboard,tweetit }