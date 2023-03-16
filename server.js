const express = require('express')
const app = express();
const PORT=3008
<<<<<<< HEAD
// const conn = require('./connection/connectdb');
=======
const conn = require('./connection/connectdb');
const register = require('./Routes/register')
const login = require('./Routes/login')
app.use(express.static(__dirname + '/public'))
app.set('view engine','ejs')
// const conn = require('../connection/connectdb');


// my all end points

app.use('/user',register)
app.use('/user-login',login)
>>>>>>> 400f7949b66448d2d8bdf88362ee6879a90c20f7

app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})