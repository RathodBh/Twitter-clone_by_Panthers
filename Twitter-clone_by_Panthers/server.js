const express = require('express')
const app = express();
const PORT=3008
const register = require('./Routes/register')
const login = require('./Routes/login')
const dashboard = require('./Routes/dashboard')
const multer = require("multer")
const path =require("path")
app.use(express.static(__dirname + '/public'))

const mysql = require("mysql2");
var conn = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"root",
    database:"twitter_clone"
})
conn.connect((err)=>{
    if(err) throw err;
    console.log("Database connected");
})

app.set('view engine','ejs')
// const conn = require("./connection/connectdb");
var bodyParser = require('body-parser')
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json())
// const{ queryExecuter} = require('../Twitter-clone_by_Panthers/queryExecute/queryExecuter.js')
const asyncHandler = require("express-async-handler");

app.use('/user',register)
app.use('/user-login',login)
app.use('/dashboard',dashboard)
// app.use(queryExecuter)

app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})
const storage=multer.diskStorage({
    destination:(req,file,cb)=>{
        cb(null,"./public/assets/images")
    },
    filename:(req,file,cb)=>{
        console.log(file);
        cb(null, Date.now() +path.extname(file.originalname))
    }
})
const upload = multer({storage:storage})
app.post("/updateProfile",upload.fields([{
    name: 'cover_image', maxCount: 1
  }, {
    name: 'profile_image', maxCount: 1
  }]), async(req,res)=>{
    // const registerUser = asyncHandler(async (req, res) => {
        try {
            const {user_name, user_email,user_bio, user_dob} = req.body;
            // async function edit(user_name, user_email,user_bio, user_dob) {
                try {
                    const file = req.file;
                    const filename = file.originalname;
                    const filepath = file.path;
                    // console.log("here");
                    var imgsrc = 'http://127.0.0.1:3008/assets/images/' + req.file.filename;
                    // console.log(imgsrc)
                    console.log("Image uploaded")
                    const qry1 = `update twitter_clone.users set name = "${user_name}", user_name="${user_name}", bio="${user_bio}" ,birth_date="${user_dob}", cover_image="${imgsrc}" WHERE id="1";`
                    const oldUser = await queryExecuter(qry1)
                    res.send("success")
                    
                } catch (error) {
                    throw error;
                }
            // }
    
        } catch (error) {
            throw error;
        }
    // });

})
app.post("/changePassword", async(req,res)=>{
    try {
        const {old_password, new_password} = req.body;
        // async function change_password(user_name, user_email,user_bio, user_dob) {
            try {
                const qry1 = `SELECT password FROM twitter_clone.users where id="1";`
                const oldPassword = await queryExecuter(qry1);
                console.log(oldPassword[0].password);
                console.log(old_password)
                if(oldPassword[0].password==old_password){
                    const qry2 = `update twitter_clone.users set password="${new_password}" WHERE id="1";`
                    const newPassword = await queryExecuter(qry2);
                    res.send("success")
                } 
            } catch (error) {
                throw error;
            }
        // }

    } catch (error) {
        throw error;
    }
})

//multer


app.get("/upload", (req,res)=>{
    res.render("upload")
})
// app.post("/upload",upload.single("image"),(req,res)=>{
//     const file = req.file;
//     const filename = file.originalname;
//     const filepath = file.path;
//     console.log("here");
//     var imgsrc = 'http://127.0.0.1:3008/uploads/' + req.file.filename;
//     res.send("Image uploaded")
// })
async function queryExecuter(query) {
    return new Promise((resolve, rejects) => {
        conn.query(query, (err, result) => {
            if (err) {
                rejects(err);
            }
            resolve(result);
        });
    })
}