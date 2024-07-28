const express = require('express')

const router = express.Router()
const userSignUpController = require("../controllers/user/signup")
const userSignInController=require("../controllers/user/signin")




   //user router
router.post("/signup",userSignUpController)
router.post("/signin",userSignInController)
  








module.exports = router