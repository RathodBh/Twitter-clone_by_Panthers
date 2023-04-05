const express = require("express")
const app = express();
const router = express.Router()


// const {registerUser,getregisterUser, getEmailCheck,getUserNameCheck} = require('../controllers/registerController');
const { getHome } = require("../controllers/homeController");

//get request
router.route('/').get(getHome)

module.exports = router;