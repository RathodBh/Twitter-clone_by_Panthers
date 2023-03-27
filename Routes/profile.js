const express = require("express");
const app = express();
const router = express.Router()
const { protect } = require('../Middlewares/auth')
const { getProfile, getProfiledata, updateProfilepoint,editprofile } = require("../controllers/profileController");
// const {upload}   = require("../Middlewares/multerHelper");
const { getCheckPass} = require('../controllers/checkPassCtrl')

router.route("/").get(protect, getProfiledata);
router.route("/").get(protect, editprofile);
router.route("/user").get(protect, getProfile);





module.exports = router