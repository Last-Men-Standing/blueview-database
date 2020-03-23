CREATE TABLE PostReply(
    reply_id VARCHAR(63) NOT NULL,
    parent_post_id VARCHAR(63) NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    user_id VARCHAR(63) NOT NULL,
    text VARCHAR(1023) NOT NULL,
    PRIMARY KEY (reply_id, parent_post_id)
);

