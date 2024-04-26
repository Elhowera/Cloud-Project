//import the main libraries
//for the hosting and request handling
const express = require("express");
//intialize express
const app = express();

//import file system libraries
const path = require("path");
const fs = require("fs");

require("./CloudDatabase")(app);
//use a public directory without interpretations for the html files
//searches the public directory for the specified file
app.use(express.static(path.join("public")));

//when we get the main endpoint (/) we send the home page
app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "public", "home", "index.html"))
})

//when the members route is accessed
app.get("/member/:member", (req, res) => {
    //we take the specified member from the url /member/(The member)
    const {member} = req.params;

    //check if that member exists in a folder
    if(fs.existsSync(path.join(__dirname, "public", "home", "members", member)))
        //send the index.html file if the folder exists
        res.sendFile(path.join(__dirname, "public", "home", "members", member, "index.html"));
    else 
        //send an error if the folder doesn't exist
        res.status(404).send({msg: "Not found"})

})

//start the server at port 5000
app.listen(5000, () => {
    console.log("listening on port 5000");
})