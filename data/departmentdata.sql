CREATE TABLE DepartmentData (
    department_id VARCHAR(63),
    post_id VARCHAR(63),
    attitude  DECIMAL(2,1) CHECK (attitude >= 1 AND attitude <= 5),
    communication DECIMAL(2,1) CHECK (communication >= 1 AND communication <= 5),
    efficiency DECIMAL(2,1) CHECK (efficiency >= 1 AND efficiency <= 5),
    fairness DECIMAL(2,1) CHECK (fairness >= 1 AND fairness <= 5),
    safety DECIMAL(2,1) CHECK (safety >= 1 AND safety <= 5),
    PRIMARY KEY (department_id, post_id)
);

