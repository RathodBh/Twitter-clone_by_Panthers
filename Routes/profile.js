const express = require("express");
const app = express();
const router = express.Router()
const {protect } = require('../Middlewares/auth')
const { getProfile,getProfiledata } = require("../controllers/profileController");

router.route("/").get(protect,getProfiledata);
router.route("/user").get(protect,getProfile);

module.exports = router