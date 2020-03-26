CREATE TABLE Department (
    id INT IDENTITY(0,1),
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    zipcode VARCHAR(10) NOT NULL,
    overall_rating DECIMAL(3,2) NOT NULL CHECK (overall_rating >= 1 AND overall_rating <= 5),
    PRIMARY KEY (id)
);

