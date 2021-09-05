const express = require("express");
const app = express();
const port = 4000;
const router = require("./router");
const { Worker } = require('worker_threads');
const th = new Worker(__dirname + '/updateData.js');
app.use(express.json())
app.use("/", router);
app.listen(port, () => console.log(`Example app listening on port port!`));
