const express = require("express");
const User = require("../model/user");
const authRouter = express.Router();

//get the data from the client side
// And then we will post the data in the database
//return that data to the user

authRouter.post("/api/signup", async (req, res) => {
  const { name, email, password } = req.body;
  const existingUser = await User.findOne({email:email})
  if (existingUser){
    return res.status(400).json({msg:'User with this email address already exists!'})
  }
});

module.exports = authRouter;
