use opentutorials;

\! echo "Select * FROM topic"
SELECT * FROM topic;
\! echo "Select * FROM author"
SELECT * FROM author;
\! echo "Select * FROM profile"
SELECT * FROM profile;

SELECT * FROM topic LEFT JOIN author  \
    ON topic.author_id = author.aid  \
    WHERE author.aid IS NULL;