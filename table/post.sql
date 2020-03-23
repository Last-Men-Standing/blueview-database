CREATE TABLE Post(
    id VARCHAR(63),
    timestamp TIMESTAMP,
    date_of_incident DATE,
    title VARCHAR(63), 
    body VARCHAR(1023), 
    user_id VARCHAR(63),
    department_id VARCHAR(63),
    PRIMARY KEY (id)
);

