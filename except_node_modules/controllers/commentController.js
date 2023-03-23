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


const commentInfo = asyncHandler(async (req, res) => {

    const token = req.session.email
    if (!token) {
        res.redirect('/user-login')
    }
    let tweet_id = req.params.id;
    let userId = req.session.user_id;
    let db = `twitter_clone`;
    try {
        // let sel_q = `SELECT id,name,user_image,user_name FROM ${db}.users `;
        let sel_tweets = `SELECT t.id,t.tweet,t.media_url,t.media_type,t.tweet_likes,t.tweet_comments,t.tweet_retweets,t.created_at,u.id as user_id, u.name,u.user_image,u.user_name  FROM ${db}.tweets as t JOIN ${db}.users as u  WHERE t.id = ${tweet_id} && u.id = ${userId} `;

        const all_tweet_data = await queryExecuter(sel_tweets);


        const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

        let post_at = []
        let hover_post_at = []
        //set month name and date
        all_tweet_data.forEach((tweet) => {
            const d = new Date(tweet.created_at);
           
            const d2 = new Date()

            const diffTime = Math.abs(d2 - d);
            const diffYears = ((d2.getFullYear() - d.getFullYear()) != 0) ? true : false;
            const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
            const diffHours = Math.ceil(diffTime / (1000 * 60 * 60));
            const diffMinutes = Math.ceil(diffTime / (1000 * 60));


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


            //onhover real date
            let hover_is_am_pm = "AM"
            let hover_hours = d.getHours()
            if (hover_hours >= 12) {
                hover_is_am_pm = "PM"
                hover_hours = hover_hours - 12;
            }
            hover_post_at.push(post_at.push(`${hover_hours}:${d.getMinutes()} ${hover_is_am_pm} • ${month[d.getMonth()]} ${d.getDate()}, ${d.getFullYear()}`))
        })
        
        //i need to show the get request for register page
        let flag = false
        res.render('tweet_details', { tweet_data: all_tweet_data, post_date: post_at, hover_post_date: hover_post_at });

    } catch (err) {
        console.log("Error Dashboard:", err);
    }

})


module.exports = { commentInfo }