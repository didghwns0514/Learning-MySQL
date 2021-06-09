use opentutorials;

\! echo "Select * FROM topic"
SELECT * FROM topic;
\! echo "Select * FROM author"
SELECT * FROM author;
\! echo "Select * FROM profile"
SELECT * FROM profile;

-- using 2 tables
\! echo "SELECT * FROM topic FULL OUTER JOIN author ON topic.author_id = author.aid"
(SELECT * FROM topic  \
    LEFT JOIN author ON topic.author_id = author.aid)  \
    UNION DISTINCT  \
(SELECT * FROM topic  \
    RIGHT JOIN author ON topic.author_id = author.aid);
