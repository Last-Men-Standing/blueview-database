<h2 align="center">Database Management System for BlueView </h2>

> This repository contains SQL and corresponding scripts to setup and populate the database for BlueView


_Authored by:_


- William A. Zawilinski
- Joseph C. Cengel
- Richard Drum
- Anthony Chen
- Zack Allen

---
## Development Environment

The latest version of [Node.js](https://nodejs.org/en/) > _(v8.0.0)_ should be installed on your system. If you are using Windows and are having a hard time installing the latest version, please consider using [Node Version Manager](https://github.com/creationix/nvm).

## Installation Instructions

Clone the repository in the desired directory. Once cloned, run the following command in the root of the directory to install the required dependencies. 
```bash
npm install
```
## Installing Postgres

On **Windows**, you can use installer available on the Postgres [Windows Installers](https://www.postgresql.org/download/windows/) page. At the least, you should install the Postgres server. pgAdmin might be helpful but is not a requirement. StackBuilder is provided by the company that creates the installer; it's not necessary.

On **Mac**, use [homebrew](https://brew.sh/): `brew install postgres`. You can install pgAdmin separately if you wish.

On Linux, there are [instructions](https://www.postgresql.org/download/linux/) available. There are packages for most major distributions that will be sufficient.


## Setup

Once you've installed Postgres, you should be able to run the `psql` command from the command line. 

Postgres ties into the underlying user accounts of the host operating system, so when you run `psql` with no other arguments, it will attempt to connect to a Postgres user with the same name as whatever username you're signed in with, and to a database with the same name. 

Start the postgres prompt with some variation of 
- `psql`
- `psql -U postgres postgres`
- `sudo -u postgres psql postgres`
depending on the specifics of your installation. 

- `\q`
Use this to exit the prompt

## Running the Initialization Script

Once Postgres is installed on your machine, run the following command to create the database and database user. Run this command in the root of the database directory.
```bash
psql postgres < initialize.sql
```

## Building the Database

Once the database has been created along with the user, run the following script to create the tables and populate the department data.
```bash
npm run rebuild_database
```
### Killing the script
Run the following commands to ensure the database is populated. Once the relations are there, kill the script. We realize this is not the best way to manage this and are exploring alternative modules/methods. 

```bash
psql -U bv_user blueview_development 
```
Once in the sql prompt, run the following
```bash
\dt
```
```bash
^C
```

## Starting the Database

Once the database has been built, run the following command in any directory to start Postgres on your machine
**Mac/Linux**
```bash
postgres
```


