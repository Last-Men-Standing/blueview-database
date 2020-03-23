CREATE TABLE PostReply(
    reply_id VARCHAR(63),
    parent_post_id VARCHAR(63),
    timestamp TIMESTAMP,
    user_id VARCHAR(63),
    text VARCHAR(1023),
    PRIMARY KEY (reply_id, parent_post_id)
);

