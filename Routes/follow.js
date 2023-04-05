
// app.get('/getFollowUserData', async (req, res) => {

//     let uid = req.session.user_id;
//     var getuser = await queryExecuter(`select id,name,user_name,user_image,cover_image,birth_date,bio,email from users where id not in(${uid})`);

//     var getfollowerId = await queryExecuter(`select follower_id from followers where user_id='${uid}'`);
//     var followers = [];
//     getfollowerId.forEach(id => {
//         followers.push(id.follower_id);
//     });


//     let notFollow = await queryExecuter(`select id,name,user_name,user_image,cover_image,birth_date,bio,email from users where id !='${uid}' && id not in(SELECT following_id FROM following WHERE user_id='${uid}' && following_id != '${uid}')`);
    

//     res.json( { fuser: getuser, followers, unfollowers:notFollow, myUserId:uid});
//     // res.render('profile',)
// })

const express = require("express")
const app = express();
const router = express.Router()

const { followData } = require("../controllers/followController");
const { upload } = require("../Middlewares/multerHelper");

//get request
router.route('/').get(followData)

module.exports = router;