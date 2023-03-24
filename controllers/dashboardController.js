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



var tweet_ids
const getpostLike1 = asyncHandler(async (req, res) => {
    // console.log("herer");
    try {
        const token = req.session.email
        const user_id = req.session.user_id
        if (!token) {
            res.redirect('/user-login');
            return
        }
        const { data } = req.body;
        var tweet_id = data.tweet_id
        tweet_ids = data.tweet_id
        if (data.like == true) {
            const qrt = `SELECT  * FROM twitter_clone.likes where tweet_id=${data.tweet_id} and user_id=${user_id} and is_deleted=0;`
   
            const like_data = await queryExecuter(qrt);
      

            if (like_data.length == 0) {
                const ins_qrt = `INSERT INTO likes (user_id,tweet_id,created_at) values (${user_id},${data.tweet_id},NOW())`
        
                const like_entry = await queryExecuter(ins_qrt);

                const select_tweet_like = `select tweet_likes from tweets where id=${data.tweet_id}`
                const tweet_like_count = await queryExecuter(select_tweet_like);

                var alllikecount = tweet_like_count[0].tweet_likes
                alllikecount = alllikecount + 1

                const up_tweets_tweetlike = `Update tweets Set tweet_likes=${alllikecount} where id=${data.tweet_id}`
                const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);
                let flag = true
                res.json({ flag, alllikecount })
            }
            else if (like_data.length >= 1) {

                const select_tweet_like = `select tweet_likes from tweets where id=${data.tweet_id}`
                const tweet_like_count = await queryExecuter(select_tweet_like);
                alllikecount = tweet_like_count[0].tweet_likes
                alllikecount = alllikecount - 1

                const up_tweets_tweetlike = `Update tweets Set tweet_likes=${alllikecount}  where id=${data.tweet_id}`
                const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);


                const Update_unlike = `Update likes Set  updated_at= Now(),is_deleted=1  where tweet_id=${data.tweet_id}`
                const Update_unlike_entry = await queryExecuter(Update_unlike);
                let flag = false
                res.json({ flag, alllikecount })
            }

        }

        else {
            const select_tweet_like = `select tweet_likes from tweets where id=${data.tweet_id}`
            const tweet_like_count = await queryExecuter(select_tweet_like);
            alllikecount = tweet_like_count[0].tweet_likes
            alllikecount = alllikecount - 1

            const up_tweets_tweetlike = `Update tweets Set tweet_likes=${alllikecount}  where id=${data.tweet_id}`
            const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);


            const Update_unlike = `Update likes Set  updated_at= Now(),is_deleted=1  where tweet_id=${data.tweet_id}`
            const Update_unlike_entry = await queryExecuter(Update_unlike);
            let flag = false
            res.json({ flag, alllikecount })
        }

    } catch (error) {
        console.log(error);
    }

})


const getpostRetweet = asyncHandler(async (req, res) => {
    // console.log("herer");
    try {
        const token = req.session.email
        const user_id = req.session.user_id
        if (!token) {
            res.redirect('/user-login');
            return
        }
        const { data } = req.body;
        var tweet_id = data.tweet_id
        tweet_ids = data.tweet_id
        if (data.like == true) {
            const qrt = `SELECT  * FROM twitter_clone.likes where tweet_id=${data.retweet} and user_id=${user_id} and is_deleted=0;`
   
            const like_data = await queryExecuter(qrt);
      

            if (like_data.length == 0) {
                const ins_qrt = `INSERT INTO likes (user_id,tweet_id,created_at) values (${user_id},${data.tweet_id},NOW())`
        
                const like_entry = await queryExecuter(ins_qrt);

                const select_tweet_like = `select tweet_likes from tweets where id=${data.tweet_id}`
                const tweet_like_count = await queryExecuter(select_tweet_like);

                var alllikecount = tweet_like_count[0].tweet_likes
                alllikecount = alllikecount + 1

                const up_tweets_tweetlike = `Update tweets Set tweet_likes=${alllikecount} where id=${data.tweet_id}`
                const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);
                let flag = true
                res.json({ flag, alllikecount })
            }
            else if (like_data.length >= 1) {

                const select_tweet_like = `select tweet_likes from tweets where id=${data.tweet_id}`
                const tweet_like_count = await queryExecuter(select_tweet_like);
                alllikecount = tweet_like_count[0].tweet_likes
                alllikecount = alllikecount - 1

                const up_tweets_tweetlike = `Update tweets Set tweet_likes=${alllikecount}  where id=${data.tweet_id}`
                const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);


                const Update_unlike = `Update likes Set  updated_at= Now(),is_deleted=1  where tweet_id=${data.tweet_id}`
                const Update_unlike_entry = await queryExecuter(Update_unlike);
                let flag = false
                res.json({ flag, alllikecount })
            }

        }

        else {
            const select_tweet_like = `select tweet_likes from tweets where id=${data.tweet_id}`
            const tweet_like_count = await queryExecuter(select_tweet_like);
            alllikecount = tweet_like_count[0].tweet_likes
            alllikecount = alllikecount - 1

            const up_tweets_tweetlike = `Update tweets Set tweet_likes=${alllikecount}  where id=${data.tweet_id}`
            const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);


            const Update_unlike = `Update likes Set  updated_at= Now(),is_deleted=1  where tweet_id=${data.tweet_id}`
            const Update_unlike_entry = await queryExecuter(Update_unlike);
            let flag = false
            res.json({ flag, alllikecount })
        }

    } catch (error) {
        console.log(error);
    }

})
const getDashboard = asyncHandler(async (req, res) => {
    const user_id = req.session.user_id
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
        let all_comments = []
        let all_likes = []
        let all_retweets = []


        for (let x of all_tweet_data) {
            let tweet_id = x.id;
            let [sel_comments] = await queryExecuter(`SELECT count(*) as tot FROM ${db}.comments WHERE tweet_id = '${tweet_id}'`);
            let [sel_likes] = await queryExecuter(`SELECT count(*) as tot FROM ${db}.likes WHERE tweet_id = '${tweet_id}'`);

            all_comments.push(sel_comments.tot);
            all_likes.push(sel_likes.tot);
        }

        //DOne by jigar------------------------------


        const alltweetids = `select id from tweets`
        const alltweet_ids = await queryExecuter(alltweetids);

        let value = alltweet_ids.length
        var arr_of_liked = []
        var done = []
        for (let i = 0; i < value; i++) {

            const qrt = `SELECT *  FROM twitter_clone.likes where tweet_id=${alltweet_ids[i].id} and user_id=${user_id} and is_deleted=0;`

            const likeddata = await queryExecuter(qrt);
            arr_of_liked[i]=likeddata

        }

        let ispostlikebyuser = []
        ispostlikebyuser = arr_of_liked
        let arrtruefalse = []
        let arrlikeid = [];
        for (let j = 0; j < ispostlikebyuser.length; j++) {
            if (ispostlikebyuser[j].length) {
                let flaga = true
                arrtruefalse.push(flaga)
              
                var userlikedpost = ispostlikebyuser[j][0].tweet_id
                arrlikeid.push(userlikedpost)

            }
            else {
                let flaga = false
                arrtruefalse.push(flaga)
            }

        }
        //i need to show the get request for register page
        let flag = false;
   
        return res.render('dashboard', { tweet_data: all_tweet_data, post_date: post_at, all_comments, all_likes, arrtruefalse, arrlikeid });
    }


    catch (err) {
        console.log("Error Dashboard:", err);
    }
    //i need to show the get request for register page

});



const postTweet = asyncHandler(async (req, res) => {
    console.log('req.file :>> ', req);
    const token = req.session.email
    if (!token) {
        res.redirect('/user-login')
        return;
    }


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



module.exports = { getDashboard, postTweet, getpostLike1,getpostRetweet }