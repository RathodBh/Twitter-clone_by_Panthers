const express = require("express");
const app = express();
const router = express.Router()
const { protect } = require('../Middlewares/auth')
const { getProfile, getUserInfo, getProfiledata, updateProfilepoint,editprofile ,getTargetProfile,getTagetProfiledata} = require("../controllers/profileController");
// const {upload}   = require("../Middlewares/multerHelper");
const { getCheckPass} = require('../controllers/checkPassCtrl')

router.route("/").get(protect, getProfiledata);
router.route("/").get(protect, editprofile);
router.route("/user").get(protect, getProfile);
router.route("/user/search").get( getTagetProfiledata);
router.route('/user/:id').get(getTargetProfile);
router.route("/getUserData").get(protect, getUserInfo);





module.exports = router