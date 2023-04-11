const conn = require("../connection/connectdb");
const jwt = require('jsonwebtoken')
const { detect } = require('detect-browser');
const browser = detect();
const address = require('address')
const express = require("express");
const bcrypt = require("bcrypt");
const app = express();
const bodyParser = require("body-parser");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const asyncHandler = require("express-async-handler");
async function queryExecuter(query) {
    return new Promise((resolve, rejects) => {
        conn.query(query, (err, result) => {
            if (err) {
                rejects(err);
            }
            resolve(result);
        });
    });
}

const deleteip = async(req,resp)=>{
    let ip = address.ip();
    console.log(ip);
    let deleteip2 = `delete from twitter_clone.ip where ip_addr = '${ip}'`;
    await queryExecuter(deleteip2);
    console.log('delete ip2 executed');
    resp.json('done')
}

module.exports = { deleteip }

