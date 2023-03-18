const express = require('express')
const app = express();
var cookieParser = require('cookie-parser');
var session = require('express-session');
app.use(cookieParser());
app.use(session({
secret:"secret key",
resave:false,
saveUninitialized:true
}));
module.exports=session

