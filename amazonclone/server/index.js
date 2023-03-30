// IMPORTS FROM PACKAGES
const express = require("express");
// IMPORTS FROM OTHER FILES


// INIT
const PORT = process.env.PORT || 3000;
const app = express();



app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});
