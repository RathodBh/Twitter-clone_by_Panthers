const express = require('express')
const app = express();
const PORT=3008
const conn = require('./connection/connectdb');
const register = require('./Routes/register')
const login = require('./Routes/login')
app.use('/user',register)
app.use('/user-login',login)

app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})