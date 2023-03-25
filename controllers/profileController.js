const conn = require('../connection/connectdb');

const express = require('express')
const app = express();
const util = require('util')
const asyncHandler = require("express-async-handler");
var query = util.promisify(conn.query).bind(conn)

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

const getProfiledata = asyncHandler(async(req, res) => {
    //i need to show the get request for register page
   let user_id = req.session.user_id
    var users = await query(`select * from users where id=${user_id}`);

    res.json(users)
    // let flag = false
});
const editprofile = asyncHandler(async(req, res) => {
    //i need to show the get request for register page
   let user_id = req.session.user_id
    var users = await query(`select * from users where id=${user_id}`);

    res.json(users)
    // let flag = false
});
const getProfile = asyncHandler(async(req, res) => {
  
    //i need to show the get request for register page
    let db = `twitter_clone`;
    try {
        const token = req.session.email
        if (!token) {
            res.redirect('/user-login')
        }
        const user_id = req.session.user_id
        // let sel_q = `SELECT id,name,user_image,user_name FROM ${db}.users `;
        let sel_tweets = `select * from tweets where user_id=${user_id} order by id DESC`;
        const all_tweet_data = await query(sel_tweets);


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


        const alltweetids = `select id from tweets where user_id=${user_id}`
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
       
        var users = await query(`select * from users where id=${user_id}`);

        console.log(users);

        //i need to show the get request for register page
        let changepass = false
        res.render('profile', { tweet_data: all_tweet_data, post_date: post_at,arrlikeid,users,changepass });

    } catch (err) {
        console.log("Error Dashboard:", err);
    }
    //i need to show the get request for regi
    // res.render('profile',)
    
});


const updateProfilepoint = asyncHandler(async(req,res)=>{
    try {
        const arr = { name, user_email, user_bio, user_dob } = req.body;
        console.log(arr);
        // async function edit(user_name, user_email,user_bio, user_dob) {
        try {
            let uid = req.query.uid || 3;
            const file = req.files;
            var users = await query(`select user_image as dp , cover_image as cover from users where id=${uid}`);
            console.log(users[0].dp);
            console.log(users[0].cover);
            console.log("here");
            console.log(req.files);
            // console.log(file.cover_image[0].filename);
            // console.log(file.profile_image[0].filename);
            // var cover_imgsrc =  'http://localhost:3008/uploads/' + file.cover_image[0].filename || users[0].cover ;
            // var profile_imgsrc = 'http://localhost:3008/uploads/' + file.profile_image[0].filename ||  users[0].dp ;
            var cover_imgsrc = req.files.cover_image;
            var profile_imgsrc = req.files.profile_image;
            console.log(cover_imgsrc);
            console.log(profile_imgsrc);
            if (cover_imgsrc) {
                cover_imgsrc = 'http://localhost:3008/uploads/' + file.cover_image[0].filename;
            } else {
                cover_imgsrc = users[0].cover;
            }

            if (profile_imgsrc) {
                profile_imgsrc = 'http://localhost:3008/uploads/' + file.profile_image[0].filename
            } else {
                profile_imgsrc = users[0].dp
            }

            console.log("Image uploaded")


            await query(`update users set  bio="${user_bio}" ,birth_date="${user_dob}" ,cover_image="${cover_imgsrc}", user_image="${profile_imgsrc}" WHERE id=${uid}`);
            res.redirect("prof")
            // const oldUser = await queryExecuter(qry1)
            // res.render("dashboard", {cover_imgsrc,profile_imgsrc })

        } catch (error) {
            throw error;
        }
        // }

    } catch (error) {
        throw error;
    }
})



module.exports = { getProfile ,getProfiledata,updateProfilepoint,editprofile}