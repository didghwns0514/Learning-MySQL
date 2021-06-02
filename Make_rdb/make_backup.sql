USE opentutorials;

-- rename table
RENAME TABLE topic TO topic_backup;

-- show renamed table
SELECT * FROM topic_backup;