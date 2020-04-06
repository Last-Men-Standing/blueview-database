"use strict";
const fs = require("fs");
const path = require("path");

const DEPARTMENT_SQL = fs
  .readFileSync(path.join(__dirname, "../tables/department.sql"))
  .toString();
const DEPARTMENT_DATA_SQL = fs
  .readFileSync(path.join(__dirname, "../tables/department_data.sql"))
  .toString();
const POST_REPLY_SQL = fs
  .readFileSync(path.join(__dirname, "../tables/post_reply.sql"))
  .toString();
const POST_SQL = fs
  .readFileSync(path.join(__dirname, "../tables/post.sql"))
  .toString();
const RATING_SQL = fs
  .readFileSync(path.join(__dirname, "../tables/rating.sql"))
  .toString();
const USER_SQL = fs
  .readFileSync(path.join(__dirname, "../tables/account.sql"))
  .toString();
const DEPARTMENT_DEFN_SQL = fs
  .readFileSync(path.join(__dirname, "../data/department-setup.sql"))
  .toString();

const ALL_TABLES = [
  DEPARTMENT_SQL,
  DEPARTMENT_DATA_SQL,
  POST_REPLY_SQL,
  POST_SQL,
  RATING_SQL,
  USER_SQL
];

const ALL_DEFINITIONS = [DEPARTMENT_DEFN_SQL];

let TABLE_SQL = "";
let DATA_SQL = "";

ALL_TABLES.forEach(sql_string => {
  TABLE_SQL += sql_string;
});

ALL_DEFINITIONS.forEach(sql_string => {
  DATA_SQL += sql_string;
});

module.exports = { TABLE_SQL, DATA_SQL };
