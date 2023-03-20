const express = require('express')
const app = express();
const PORT = 3008
const conn = require('./connection/connectdb');
const register = require('./Routes/register')
const login = require('./Routes/login')
const profile = require('./Routes/profile')
const dashboard = require('./Routes/dashboard')
const path = require('path');
// const emoji=require('emoji-picker-element')

// const { upload } = require("./controllers/dashboardController");
// const queryExecuter = require('./queryExecute/queryExecuter')
app.use(express.static(__dirname + '/public'))
app.set('view engine', 'ejs')

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

// const conn = require('../connection/connectdb');
const multer = require('multer');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "./public/assets/images")
    },
    filename: (req, file, cb) => {
        console.log(file);
        cb(null, Date.now() + path.extname(file.originalname))
    }
});

const upload = multer({
    storage: storage,
    fileFilter: (req, file, cb) => {
        const fileSize = parseInt(req.headers["content-length"]);
        if (file.mimetype == "image/png" || file.mimetype == "image/jpg" || file.mimetype == "image/jpeg" && fileSize <= 2097152) 
        {
            cb(null, true);
        }
        else if (file.mimetype == "video/mp4" && fileSize <= 10485760) {
        }
        else {
            cb(null, false);
            return cb(new Error('Only .png, .jpg and .jpeg format allowed!'));
        }
    },
})

// my all end points
app.use('/user', register)
app.use('/user-login', login)
app.use('/dashboard', dashboard)
app.use("/profile", profile)
app.use('/dashboard/tweet', dashboard)

app.post("/dashboard", upload.array('cover_image', 5),async (req, res) => {
    const file = req.files;
    console.log("length=", file.length);
    for (var i = 0; i < file.length; i++) {
        const tweet = req.body.tweet_text;
        const filename = file[i].originalname;
        const filepath = file[i].path;
        const filetype = file[i].mimetype;
        const filename1 = file[i].filename
        console.log("mime type" + filetype);
        console.log("file name" + filename);
        console.log(filepath);
        console.log(tweet);
        var imgsrc = 'http://127.0.0.1:3008/uploads/' + filename;
        const sql = 'INSERT INTO tweets (tweet, media_url,media_type) VALUES (?, ?,?)';
        const data = [tweet, imgsrc, filetype];
       conn.query (sql, data);
    }
    res.redirect('/dashboard');
})


// app.get('/tweet/getapi?', (req, res) => {
//     console.log(req.file);
//     console.log(req.query.uploaded_file);
//     var twt_value = req.query.twt_value;
//     console.log("api", twt_value);
//     res.render('dashboard');
// const qry1 = `INSERT INTO tweets(tweet)VALUES('${twt_value}');`
// console.log(qry1);
// const oldUser =  queryExecuter(qry1)
// })

app.listen(PORT, () => {
    console.log(`I am listining on ${PORT}`);
})

