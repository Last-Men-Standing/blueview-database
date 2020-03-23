CREATE USER bv_user WITH PASSWORD 'alpine';
CREATE DATABASE blueview_development;
GRANT ALL PRIVILEGES ON DATABASE blueview_development TO bv_user;
