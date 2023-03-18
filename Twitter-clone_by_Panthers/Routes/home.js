const express = require("express")
const app = express();
const router = express.Router()

const {homePage} = require('../controllers/homeController')

// add routes

router.route('/home').get(homePage)

module.exports=router;