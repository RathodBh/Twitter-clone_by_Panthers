const conn = require('../connection/connectdb');
const queryExecuter = require('../queryExecute/queryExecuter')
const express = require('express')
const app = express();
const asyncHandler = require("express-async-handler");
const multer = require('multer');
const editProfile = asyncHandler(async(req,res)=>{
    const qry1 = `select * from Jwt_prac.users where email='${email}'`
    const oldUser = await queryExecuter(qry1)
})