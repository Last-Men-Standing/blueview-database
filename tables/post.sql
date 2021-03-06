DROP TABLE IF EXISTS post;
CREATE TABLE post (
    id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    user_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    department_id INT NOT NULL,
    incident_date DATE NOT NULL,
    title VARCHAR(63) NOT NULL, 
    body VARCHAR(1023) NOT NULL,
    tag VARCHAR(256) NOT NULL
);
GRANT ALL PRIVILEGES ON post TO bv_user;
