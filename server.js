const express = require('express')
const app = express();
const PORT=3008
const conn = require('./connection/connectdb');

app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})