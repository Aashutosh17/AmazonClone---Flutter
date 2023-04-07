const mongoose = require("mongoose");
const { use } = require("../routes/auth");

const userSchema = mongoose.Schema({
  name: {
    type: String,
    required: true,
    trim: true,
  },
  email: {
    type: String,
    required: true,
    trim: true,
    validator: {
      validator: (value) => {
        const re = // Email Validator.. Regualar Expression that accepts unicode..
          /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
        return value.match(re);
      },
      message: "Please enter a Valid Email Address",
    },
  },
  password: {
    type: String,
    required: true,
    // validator: {
    //   validator: (value) => {
    //     return value.length > 6;
    //   },
    //   message: "Please enter a long password",
    // },
  },
  address: {
    type: String,
    default: "",
  },
  type: {
    type: String,
    default: "user",
  },
});

const User = mongoose.model("User", userSchema);
module.exports = User;
