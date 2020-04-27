DROP TABLE IF EXISTS department_data;
CREATE TABLE department_data (
    department_id INT NOT NULL,
    num_posts INT NOT NULL,
    attitude  INT NOT NULL,
    communication INT NOT NULL,
    efficiency INT NOT NULL,
    fairness INT NOT NULL,
    safety INT NOT NULL
);
GRANT ALL PRIVILEGES ON department_data TO bv_user;