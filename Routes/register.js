const express = require("express")
const app = express();
const router = express.Router()
const { protectRegistration } = require('../Middlewares/registerAuth')
// console.log(router);

const {registerUser,getregisterUser, getEmailCheck,getUserNameCheck} = require('../controllers/registerController')

// add routes
router.route('/sign-up').get(getregisterUser)
router.route('/sign-up').post(protectRegistration,registerUser)
router.route('/sign-up/checkemail').post(getEmailCheck)
router.route('/sign-up/checkusername').post(getUserNameCheck)

// router.route('/sign-up').post(authUser)

module.exports=router;