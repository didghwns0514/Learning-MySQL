USE opentutorials;

SELECT * FROM topic;
SELECT * FROM author;


-- join tables
-- LEFT used as the pre-existing table, and author is mapped to topic table
SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.id;

-- skip author_id and id in author
SELECT topic.id AS topic_id, description, created, name, profile \
    FROM topic LEFT JOIN author ON topic.author_id = author.id;
