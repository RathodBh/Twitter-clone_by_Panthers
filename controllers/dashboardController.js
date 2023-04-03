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
// const retweet = asyncHandler(async (req, res) => {
//     let db = `twitter_clone`;
//     try {
//         const token = req.session.email
//         if (!token) {
//             res.redirect('/user-login');
//             return
//         }
//         console.log("retweet");
//         res.redirect('/dashboard');

//     }
//     catch (err) {
//         console.log("Error Dashboard:", err);
//     }
//     })


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
            const qrt = `SELECT  * FROM  likes where tweet_id=${data.tweet_id} and user_id=${user_id} and is_deleted=0;`

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
        if (data.retweet == true) {
            const qrt = `SELECT  * FROM retweet where tweet_id=${data.tweet_id} and user_id=${user_id} and is_deleted=0;`

            const like_data = await queryExecuter(qrt);


            if (like_data.length == 0) {
                const ins_qrt = `INSERT INTO retweet (user_id,tweet_id,created_at) values (${user_id},${data.tweet_id},NOW())`

                const like_entry = await queryExecuter(ins_qrt);

                const select_retweet = `select tweet_retweets from tweets where id=${data.tweet_id}`
                const tweet_retweet_count = await queryExecuter(select_retweet);

                var allretweetcount = tweet_retweet_count[0].tweet_retweets
                allretweetcount = allretweetcount + 1
                console.log(allretweetcount);

                const up_tweets_retweet = `Update tweets Set tweet_retweets=${allretweetcount} where id=${data.tweet_id}`
                const Update_entry_retweet = await queryExecuter(up_tweets_retweet);
                let flag = true
                res.json({ flag, allretweetcount })
            }
            else if (like_data.length >= 1) {

                const select_tweet_retweet = `select tweet_retweets from tweets where id=${data.tweet_id}`
                const tweet_retweet_count = await queryExecuter(select_tweet_retweet);
                allretweetcount = tweet_retweet_count[0].tweet_retweets
                allretweetcount = allretweetcount - 1


                const up_tweets_retweet = `Update tweets Set tweet_retweets=${allretweetcount}  where id=${data.tweet_id}`
                const Update_entry_tweet = await queryExecuter(up_tweets_retweet);


                const Update_retweet = `Update retweet Set updated_at=Now(),is_deleted=1  where tweet_id=${data.tweet_id}`
                const Update_unlike_entry = await queryExecuter(Update_retweet);
                let flag = false
                res.json({ flag, allretweetcount })
            }

        }

        else {
            const select_tweet_retweet = `select tweet_retweets from tweets where id=${data.tweet_id}`
            const tweet_retweet_count = await queryExecuter(select_tweet_retweet);
            allretweetcount = tweet_retweet_count[0].tweet_retweets
            allretweetcount = allretweetcount - 1

            const up_tweets_tweetlike = `Update tweets Set tweet_retweets=${allretweetcount}  where id=${data.tweet_id}`

            const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);


            const Update_unlike = `Update retweet Set updated_at=Now(),is_deleted=1  where tweet_id=${data.tweet_id}`
            const Update_unlike_entry = await queryExecuter(Update_unlike);
            let flag = false
            res.json({ flag, allretweetcount })
        }

    } catch (error) {
        console.log(error);
    }

})





const getDashboard = asyncHandler(async (req, res) => {
    const token = req.session.email
    if (!token) {
        res.redirect('/user-login');
        return
    }
    res.render('dashboard')
    //i need to show the get request for register page

});



const postTweet = asyncHandler(async (req, res) => {
    // console.log('req.file :>> ', req);
    const token = req.session.email
    if (!token) {
        res.redirect('/user-login')
        return;
    }


    const file = req.files;
    const user_id = req.session.user_id;
    const tweet = req.body.tweet_text || "";

    if (file.length == 0) {
        conn.query('INSERT INTO  tweets (user_id,tweet,media_type,created_at) VALUES (?,?,?,NOW())', [user_id, tweet, 'text']);
    } else {
        for (var i = 0; i < file.length; i++) {
            const filename = file[i].originalname;
            const filepath = file[i].path;
            const filetype = file[i].mimetype;
            const filename1 = file[i].filename
            var imgsrc = '/assets/images/' + filename1;
            const sql = 'INSERT INTO  tweets (user_id,tweet, media_url,media_type,created_at) VALUES (?,?, ?, ?,NOW())';


            const data = [user_id, tweet, imgsrc, filetype];
            conn.query(sql, data);
        }
    }

    res.redirect('/dashboard');
})



module.exports = { getDashboard, postTweet, getpostLike1, getpostRetweet }