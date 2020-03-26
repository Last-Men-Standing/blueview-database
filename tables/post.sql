CREATE TABLE post (
    id VARCHAR(63) NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    date_of_incident DATE NOT NULL,
    title VARCHAR(63) NOT NULL, 
    body VARCHAR(1023) NOT NULL, 
    user_id VARCHAR(63) NOT NULL,
    department_id VARCHAR(63) NOT NULL,
    PRIMARY KEY (id)
);

