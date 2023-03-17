const express = require("express")
const app = express();
const router = express.Router()
const { protectRegistration } = require('../Middlewares/registerAuth')


// const {registerUser,getregisterUser, getEmailCheck,getUserNameCheck} = require('../controllers/registerController');
const { getDashboard } = require("../controllers/dashboardController");

router.route('/').get(getDashboard)

module.exports = router;