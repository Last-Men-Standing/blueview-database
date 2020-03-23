CREATE TABLE Department (
    id VARCHAR(63),
    data_id VARCHAR(63),
    name VARCHAR(255),
    address VARCHAR(255),
    zipcode VARCHAR(10),
    overall_rating DECIMAL(3,2) CHECK (overall_rating >= 1 AND overall_rating <= 5),
    PRIMARY KEY (id)
);

