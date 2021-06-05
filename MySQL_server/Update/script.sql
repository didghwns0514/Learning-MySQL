-- select opentutorials schema.
USE opentutorials;

-- describe topic.
DESC topic;

-- select from topic
SELECT * FROM topic;

-- update topic I want
UPDATE topic SET description='new MySQL is...', title='the MySQL'  \
        WHERE title='MySQL';

-- select from topic to see the change effect
SELECT * FROM topic;