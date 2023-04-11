const express = require("express")
const app = express();
const router = express.Router()
const {deleteip} = require('../controllers/deleteip')
//get request
router.route('/').get(deleteip)

module.exports = router;