const conn = require('../connection/connectdb');
const queryExecuter = require('../queryExecute/queryExecuter')
const express = require('express')
const app = express();
const util = require('util')
const asyncHandler = require("express-async-handler");
var query = util.promisify(conn.query).bind(conn)

const getProfile = asyncHandler(async(req, res) => {
    //i need to show the get request for register page
   
    var users = await query(`select * from users where id=6`);

    
    let flag = false;
    res.json(users)
    // res.render('profile',{flag})
});



module.exports = { getProfile }