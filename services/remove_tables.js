"use strict";
const fs = require("fs");
const path = require("path");

const DROP_SQL = fs
    .readFileSync(path.join(__dirname, "../services/remove_tables.sql"))
    .toString();

module.exports = { DROP_SQL };