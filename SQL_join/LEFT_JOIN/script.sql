use opentutorials;

\! echo "Select * FROM topic"
SELECT * FROM topic;
\! echo "Select * FROM author"
SELECT * FROM author;
\! echo "Select * FROM profile"
SELECT * FROM profile;

-- using 2 tables
\! echo "Select * FROM topic LEFT JOIN author ON topic.author_id = author.id"
\! echo "LEFT JOIN  => aka) LEFT OUTER JOIN"
Select * FROM topic LEFT JOIN author ON topic.author_id = author.aid;

-- using 3 tables
\! echo "Using 3 tables"
Select * FROM topic LEFT JOIN author ON topic.author_id = author.aid  \
                    LEFT JOIN profile ON author.profile_id = profile.pid;


-- using 3 tables and projection
/* 
    1) use AS in projection 
    2) . to access inner properties in table    
*/
\! echo "Using 3 tables and a projection!"
Select tid, topic.title, topic.description, author_id, name, profile.title AS job_title, profile.description FROM topic LEFT JOIN author ON topic.author_id = author.aid  \
                    LEFT JOIN profile ON author.profile_id = profile.pid;

-- using 3 tables and projection and a data selection
/* author.name = egoing OR */
\! echo "Using 3 tables and a projection and a specific row-data!"
Select tid, topic.title, topic.description, author_id, name, profile.title AS job_title, profile.description FROM topic LEFT JOIN author ON topic.author_id = author.aid  \
                    LEFT JOIN profile ON author.profile_id = profile.pid  \
                    WHERE author.name = 'egoing';