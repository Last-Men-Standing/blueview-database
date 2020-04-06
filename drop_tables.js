"use strict";
const { start, getConnection, stop } = require("./services/postgres");
const { DROP_SQL } = require("./services/remove_tables")

async function build() {
  await start();

  const dbClient = await getConnection();
  
  try {
    const tbBuildResult = await dbClient.query(DROP_SQL);

  }
  catch (err) {
    console.error(`error: ${err}`);
  }
}

setImmediate(async () => build());