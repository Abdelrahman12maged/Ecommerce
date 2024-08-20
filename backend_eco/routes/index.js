const express = require('express')

const router = express.Router()
const userSignUpController = require("../controllers/user/signup")
const userSignInController=require("../controllers/user/signin")
const userDetailsController = require('../controllers/user/userDetails')
const authToken = require('../middleware/authToken')



   //user router
router.post("/signup",userSignUpController)
router.post("/signin",userSignInController)
router.get("/user-details",authToken,userDetailsController)
  








module.exports = router