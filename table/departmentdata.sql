CREATE TABLE DepartmentData (
    department_id VARCHAR(63) NOT NULL,
    num_posts INT NOT NULL,
    attitude  DECIMAL(2,1) NOT NULL CHECK (attitude >= 0 AND attitude <= 5),
    communication DECIMAL(2,1) NOT NULL CHECK (communication >= 0 AND communication <= 5),
    efficiency DECIMAL(2,1) NOT NULL CHECK (efficiency >= 0 AND efficiency <= 5),
    fairness DECIMAL(2,1) NOT NULL CHECK (fairness >= 0 AND fairness <= 5),
    safety DECIMAL(2,1) NOT NULL CHECK (safety >= 0 AND safety <= 5),
    PRIMARY KEY (department_id, post_id)
);

