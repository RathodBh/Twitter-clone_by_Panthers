const express = require("express")
const app = express();
const router = express.Router()
// console.log(router);

const {registerUser,getregisterUser} = require('../controllers/registerController')

// add routes

router.route('/sign-up').get(getregisterUser)
router.route('/sign-up').post(registerUser)
router.route('/edit').get(registerUser)

// router.route('/sign-up').post(authUser)

module.exports=router;