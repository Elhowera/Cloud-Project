module.exports = (app) => {
    const fs = require("fs");
    const path = require("path");
    const mysql = require('mysql');

    // Create a connection pool
    const pool = mysql.createPool({
        connectionLimit: 10,
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'cloudproject'
    });

    app.get("/db/members/:id", (req, res) => {
        const memberId = req.params.id;
        if(!memberId) return res.status(400).send({msg: "Member id required"})
        if(!fs.existsSync(path.join(__dirname, "public", "home", "members", memberId))) return res.status(400).send({msg: "nice try lilbro"});

        pool.getConnection((err, connection) => {
            connection.query(`select * from students where PageID="${memberId}"`, (err, result) => {
                connection.release();

                res.status(200).send({user: result[0]});
            });
        })
    })
}