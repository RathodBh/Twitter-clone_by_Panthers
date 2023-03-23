const express = require("express")
const app = express();
const router = express.Router()
const { protectRegistration } = require('../Middlewares/registerAuth') 


// const {registerUser,getregisterUser, getEmailCheck,getUserNameCheck} = require('../controllers/registerController');
const { getDashboard,postTweet,getpostLike1,likeupdate } = require("../controllers/dashboardController");
const { upload } = require("../Middlewares/multerHelper");

//get request
router.route('/').get(getDashboard)
router.route('/search').get()
router.route('/like').post(getpostLike1)
router.route('/tweet').post(upload.array('cover_image', 5), postTweet)

module.exports = router;