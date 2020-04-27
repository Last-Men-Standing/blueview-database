DROP TABLE IF EXISTS rating;
CREATE TABLE rating (
    post_id INT NOT NULL,
    attitude  INT NOT NULL CHECK (attitude >= 0 AND attitude <= 5),
    communication INT NOT NULL CHECK (communication >= 0 AND communication <= 5),
    efficiency INT NOT NULL CHECK (efficiency >= 0 AND efficiency <= 5),
    fairness INT NOT NULL CHECK (fairness >= 0 AND fairness <= 5),
    safety INT NOT NULL CHECK (safety >= 0 AND safety <= 5),
    PRIMARY KEY (post_id)
);
GRANT ALL PRIVILEGES ON rating TO bv_user;
