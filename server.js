const express = require('express')
const bodyParser = require('body-parser')
const app = express();
const PORT = 3008
const conn = require('./connection/connectdb');
const register = require('./Routes/register')
const login = require('./Routes/login')
const profile = require('./Routes/profile')
const commentInfo = require('./Routes/commentInfo')
const dashboard = require('./Routes/dashboard')
const logout = require('./Routes/logout')
var cookieParser = require('cookie-parser');
var session = require('express-session');
app.use(cookieParser());
app.use(session({
    secret: "secret key",
    resave: false,
    saveUninitialized: true,

}));




const path = require('path');
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.urlencoded({ extended: false }))
app.use(express.urlencoded({ extended: true }))
app.use(bodyParser.json());
app.use(express.static(__dirname + '/public'))
app.set('view engine', 'ejs')
const bcrypt = require('bcrypt');
const crypto = require('crypto');
// my all end points
app.set('view engine', 'ejs')
app.use('/user', register)
app.use('/user-login', login)
app.use('/user-logout', logout)
app.use('/dashboard', dashboard)
app.use("/profile", profile)
app.use("/tweet", commentInfo)

const multer = require('multer');

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
app.set('view engine', 'ejs')
// const conn = require('../connection/connectdb');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "./public/assets/images")
    },
    filename: (req, file, cb) => {
        console.log(file);
        cb(null, Date.now() + path.extname(file.originalname))
    }
})
const uploads = multer({ storage: storage })


app.post("/updateProfile", uploads.fields([{

    name: 'cover_image', maxCount: 1
}, {
    name: 'profile_image', maxCount: 1
}]), async (req, res) => {

    try {
        const { name } = req.body;
        const arr = { user_email, user_bio, user_dob } = req.body;

        try {
            let uid = req.session.user_id
            const file = req.files;
            var users = await queryExecuter(`select user_image as dp , cover_image as cover from users where id=${uid}`);
            console.log(users[0].dp);
            console.log(users[0].cover);
            console.log("here");
            console.log(req.files);

            var cover_imgsrc = req.files.cover_image;
            var profile_imgsrc = req.files.profile_image;
            console.log(cover_imgsrc);
            console.log(profile_imgsrc);
            if (cover_imgsrc) {
                cover_imgsrc = 'http://localhost:3008/assets/images/' + file.cover_image[0].filename;
            } else {
                cover_imgsrc = users[0].cover;
            }

            if (profile_imgsrc) {
                profile_imgsrc = 'http://localhost:3008/assets/images/' + file.profile_image[0].filename
            } else {
                profile_imgsrc = users[0].dp
            }

            console.log("Image uploaded")


            await queryExecuter(`update users set name="${name}" , bio="${user_bio}" ,birth_date="${user_dob}" ,cover_image="${cover_imgsrc}", user_image="${profile_imgsrc}" WHERE id=${uid}`);

            res.redirect('/profile/user')


        } catch (error) {
            throw error;
        }


    } catch (error) {
        throw error;
    }
})


app.get("/srch?", async (req, res) => {
    var srchval = req.query.val;
    var sql = `select name from twitter_clone.users `;
    var names = await queryExecuter(sql);
    var arr = [];
    var newArr = [];
    for (let i = 0; i < names.length; i++) {
        arr.push(names[i].name)
    }
    var counter = 0;
    var arrVal;
    for (let j = 0; j < arr.length; j++) {
        var arrValLength = arr[j].length;
        arrVal = arr[j];
        for (let k = 0; k < srchval.length; k++) {
            if (arrVal.includes(srchval[k])) {
                var firstIndex = arr[j].indexOf(srchval[k]);
                arrVal = arrVal.substr(firstIndex + 1, arrValLength)
                counter++;
            }
        }
        if (counter == srchval.length) {
            newArr.push(arr[j])
        }
        counter = 0;
    }
    var matchedResult = [];
    for (let m = 0; m < newArr.length; m++) {
        var sql2 = `SELECT name,user_name,user_image FROM twitter_clone.users where name="${newArr[m]}";`;
        resultantName = await queryExecuter(sql2);
        matchedResult.push(resultantName)
    }
    res.json(matchedResult)

})





app.post("/dashboard/retweet", async function (req, res) {
    var user_id = req.session.user_id;
    console.log(user_id);
    console.log("byee");
    const data = req.body;
    var tweet_id = data.tweet_id;
    var a = data.a;
    // var a = 0;

    // var count_id = await queryExecuter(`select id,is_retweet from retweet where tweet_id=${tweet_id};`)
    // console.log("total=", count_id)
    // var lengthtweet = count_id;

    // if (a == 1) {
    var select_tweet = await queryExecuter(`SELECT * FROM twitter_clone.retweet WHERE tweet_id='${tweet_id}';`)
    console.log("select tweet", select_tweet[0]);
    var tweet_sel = await queryExecuter(`SELECT * FROM twitter_clone.tweets where id='${tweet_id}';`);
    console.log("tweet=", tweet_sel[0].tweet_retweets);

    var tot_re_tweet = tweet_sel[0].tweet_retweets;

    console.log("total retweet=", tot_re_tweet);


    if (select_tweet[0] == undefined) {
        var re_tweet = await queryExecuter(`INSERT INTO twitter_clone.retweet(user_id,tweet_id,created_at,is_retweet)VALUES(${user_id},${tweet_id},NOW(),'1' );`);
        console.log("retweeted");

        tot_re_tweet += 1;

        console.log("total retweet 1=", tot_re_tweet);
        var up_tweet = await queryExecuter(`UPDATE twitter_clone.tweets SET tweet_retweets = ${tot_re_tweet} WHERE id =${tweet_id};`)
        a = 0;
        console.log("update tweet 0=", up_tweet[0]);
    }
    else if (select_tweet[0].is_retweet == 1) {
        console.log("tweet id match");
        tot_re_tweet -= 1;
        console.log("new total=", tot_re_tweet);
        var update_re_tweet = await queryExecuter(`UPDATE twitter_clone.retweet SET is_retweet = 0 WHERE tweet_id = '${tweet_id}';`)
        var up_tweet2 = await queryExecuter(`UPDATE twitter_clone.tweets SET tweet_retweets = ${tot_re_tweet} WHERE id =${tweet_id};`)
        console.log("new tweet update=", up_tweet2);
    }
    else {
        console.log("tweet id not match");
        tot_re_tweet += 1;
        console.log("total retweet 2=", tot_re_tweet);
        var update_re_tweet = await queryExecuter(`UPDATE twitter_clone.retweet SET is_retweet = '1' WHERE tweet_id = '${tweet_id}';`)
        var up_tweet1 = await queryExecuter(`UPDATE twitter_clone.tweets SET tweet_retweets = ${tot_re_tweet} WHERE id =${tweet_id} ;`)
        console.log(" update tweet 1=", up_tweet1);
    }
    // }
    // else {
    //     var update_re_tweet = await queryExecuter(`UPDATE twitter_clone.retweet SET is_retweet = '0' WHERE tweet_id = '${tweet_id}';`);
    //     console.log("undo");
    //     a = 1;
    // }

})



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
app.listen(PORT, () => {
    console.log(`I am listining on ${PORT}`);
})
