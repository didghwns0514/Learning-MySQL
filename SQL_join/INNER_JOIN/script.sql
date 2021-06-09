use opentutorials;

\! echo "Select * FROM topic"
SELECT * FROM topic;
\! echo "Select * FROM author"
SELECT * FROM author;
\! echo "Select * FROM profile"
SELECT * FROM profile;


-- using 2 tables
\! echo "SELECT * FROM topic INNER JOIN author ON topic.author_id = author.aid"
SELECT * FROM topic INNER JOIN author ON topic.author_id = author.aid;

-- using 3 tables
\! echo "Using 3 tables and projections"
SELECT tid, topic.title, topic.description, name, city, profile.title, profile.description FROM topic  \
    INNER JOIN author ON topic.author_id = author.aid  \
    INNER JOIN profile ON author.profile_id = profile.pid;