CREATE USER bv_user WITH PASSWORD 'alpine';
CREATE DATABASE blueview_development WITH OWNER bv_user;
GRANT ALL PRIVILEGES ON DATABASE blueview_development TO bv_user;
