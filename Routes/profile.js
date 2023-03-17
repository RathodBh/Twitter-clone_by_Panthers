const express = require("express");
const app = express();
const router = express.Router()

const { getProfile } = require("../controllers/profileController");

router.route("/").get(getProfile);

module.exports = router