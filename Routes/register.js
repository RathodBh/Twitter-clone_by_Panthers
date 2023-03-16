const express = require("express")
const app = express();
const router = express.Router()

const {registerUser,getregisterUser} = require('../controllers/userController')

// add routes
router.route('/sign-up').post(registerUser)
router.route('/sign-up').get(getregisterUser)
// router.route('/sign-up').post(authUser)

module.exports = app