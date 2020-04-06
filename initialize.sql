CREATE USER bv_user WITH PASSWORD 'alpine';
ALTER USER bv_user CREATEDB;
CREATE DATABASE blueview_development WITH OWNER = bv_user;