const express = require("express")
const app = express();
const router = express.Router()
const { protectRegistration } = require('../Middlewares/registerAuth')

const {registerUser,getregisterUser, getEmailCheck,getUserNameCheck, activeUser} = require('../controllers/registerController')

// add routes
router.route('/sign-up').get(getregisterUser)
router.route('/sign-up').post(registerUser)
router.route('/sign-up/checkemail').post(getEmailCheck)
router.route('/sign-up/checkusername').post(getUserNameCheck)

router.route('/actiivateUser').get(activeUser)




// router.route('/sign-up').post(authUser)

module.exports=router