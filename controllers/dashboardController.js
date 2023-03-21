const conn = require('../connection/connectdb');
// const queryExecuter = require('../queryExecute/queryExecuter')
const express = require('express')
const app = express();
const asyncHandler = require("express-async-handler");

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


const getDashboard = asyncHandler(async (req, res) => {

    let db = `twitter_clone`;
    try {
        const token = req.session.email
        if (!token) {
            res.redirect('/user-login');
            return
        }
        // let sel_q = `SELECT id,name,user_image,user_name FROM ${db}.users `;
        let sel_tweets = `SELECT t.id,t.tweet,t.media_url,t.media_type,t.tweet_likes,t.tweet_comments,t.tweet_retweets,t.created_at,u.id as user_id, u.name,u.user_image,u.user_name  FROM ${db}.tweets as t LEFT JOIN ${db}.users u ON t.user_id = u.id ORDER BY  t.id DESC `;

        const all_tweet_data = await queryExecuter(sel_tweets);


        const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

        let post_at = []
        //set month name and date
        all_tweet_data.forEach((tweet) => {
            const d = new Date(tweet.created_at);
            const d2 = new Date()

            const diffTime = Math.abs(d2 - d);
            const diffYears = ((d2.getFullYear() - d.getFullYear()) != 0) ? true : false;
            const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
            const diffHours = Math.ceil(diffTime / (1000 * 60 * 60));
            const diffMinutes = Math.ceil(diffTime / (1000 * 60));

            function addZero(i) {
                if (i < 10) { i = "0" + i }
                return i;
            }

            if (diffMinutes < 60) {
                post_at.push(`${diffMinutes} Minutes ago`)
            }
            else if (diffHours < 24) {
                post_at.push(`${diffHours} Hours ago`)
            }
            else if (diffDays < 5) {
                // if (diffHours > 24) {
                const days = Math.floor(diffHours / 24)
                const hours = Math.ceil(diffHours % 24)
                post_at.push(`${days}d ${hours}h ago`)
                // }
            }
            else {
                let is_am_pm = "AM"
                let hours = d.getHours()
                if (hours >= 12) {
                    is_am_pm = "PM"
                    hours = hours - 12;
                }
                if (diffYears) {


                    post_at.push(`${hours}:${d.getMinutes()} ${is_am_pm} • ${month[d.getMonth()]} ${d.getDate()}, ${d.getFullYear()}`)
                } else {
                    post_at.push(`${hours}:${d.getMinutes()} ${is_am_pm} • ${month[d.getMonth()]} ${d.getDate()}`)

                }
            }
        })

        //i need to show the get request for register page
        let flag = false
        res.render('dashboard', { tweet_data: all_tweet_data, post_date: post_at });
        return;
    } catch (err) {
        console.log("Error Dashboard:", err);
    }
    //i need to show the get request for register page

});



const postTweet = asyncHandler(async (req, res) => {

    const token = req.session.email
    if (!token) {
        res.redirect('/user-login')
        return;
    }
    const multer = require('multer');

    const storage = multer.diskStorage({
        destination: (req, file, cb) => {
            cb(null, "./public/assets/images")
        },
        filename: (req, file, cb) => {
            cb(null, Date.now() + path.extname(file.originalname))
        }
    });

    const upload = multer({
        storage: storage,
        fileFilter: (req, file, cb) => {
            const fileSize = parseInt(req.headers["content-length"]);
            if (file.mimetype == "image/png" || file.mimetype == "image/jpg" || file.mimetype == "image/jpeg" && fileSize <= 2097152) {
                cb(null, true);
            }
            else if (file.mimetype == "video/mp4" && fileSize <= 10485760) {
                cb(null, true);
            }
            else {
                cb(null, false);
                return cb(new Error('Only .png, .jpg and .jpeg format allowed!'));
            }
        },
    })


    const file = req.files;
    const user_id = req.session.user_id;
    const tweet = req.body.tweet_text || "";

    if (file.length == 0) {
        conn.query('INSERT INTO twitter_clone.tweets (user_id,tweet,media_type,created_at) VALUES (?,?,?,NOW())', [user_id, tweet, 'text']);
    } else {
        for (var i = 0; i < file.length; i++) {
            const filename = file[i].originalname;
            const filepath = file[i].path;
            const filetype = file[i].mimetype;
            const filename1 = file[i].filename
            var imgsrc = '/assets/images/' + filename1;
            const sql = 'INSERT INTO twitter_clone.tweets (user_id,tweet, media_url,media_type,created_at) VALUES (?,?, ?, ?,NOW())';


            const data = [user_id, tweet, imgsrc, filetype];
            conn.query(sql, data);
        }
    }

    res.redirect('/dashboard');
})



module.exports = { getDashboard, postTweet }