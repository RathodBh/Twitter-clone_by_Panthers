const express = require('express')
const app = express();
const PORT=3008
const conn = require('./connection/connectdb');
const register = require('./Routes/register')
const login = require('./Routes/login')
const profile = require('./Routes/profile')
const dashboard = require('./Routes/dashboard')
const multer = require('multer')
const util = require('util')
app.use(express.static(__dirname + '/public'))

const path = require("path")
var query = util.promisify(conn.query).bind(conn)
app.set('view engine','ejs')
// const conn = require('../connection/connectdb');


// my all end points

app.use('/user',register)
app.use('/user-login',login)
app.use('/dashboard',dashboard)
app.use("/profile",profile)

app.get("/prof",(req,res)=>{
    res.render('profile')
})

app.get("/login",(req,res)=>{
    res.render('login')
})

const storage=multer.diskStorage({
    destination:(req,file,cb)=>{
    cb(null,"./public/uploads")
    },
    filename:(req,file,cb)=>{
    console.log(file);
    cb(null, Date.now() +path.extname(file.originalname))
    }
    })
    const upload = multer({storage:storage})
    app.post("/upload",upload.single("dp"), async(req,res)=>{
    
    try {
   
    
    try {
    const file = req.file;
    console.log(file);

    var dp = 'http://localhost:3008/uploads/' + req.file.filename;
    console.log("Image uploaded")
    await query(`insert into users(name,email,password,user_name,user_image) values('Sagar Khatri','sagar18@gmail.com','hello','sagar_18','${dp}')`)
    
    res.send("success")
    
    } catch (error) {
    throw error;
    }
    
    
    } catch (error) {
    throw error;
    }
    });
    
app.get("/multer",(req,res)=>{
    res.render('multer')
})


app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})