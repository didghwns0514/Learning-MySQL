-- select opentutorials schema
\! echo "use opentutorials schema!"
USE opentutorials;
\! echo ""

-- show tables in schema
\! echo "show tables!"
SHOW TABLES;
\! echo ""

-- show row profile
\! echo "describe the topic table!"
DESC topic;
\! echo ""

-- insert a row(data) in the table
/* 
    1) id is a skip! 
    2) tabale parameters must be wrapped with VAULES()
    3) NOW() is a function to call and get current time-date
    4) '  ' + \ will allow you to write sql on the next line as one
*/
\! echo "create a row into the table!"
INSERT INTO topic (title, description, created, author, profile)  \
            VALUES('Egoin', 'Egoing is...', NOW(), 'Unknown', 'creator');
INSERT INTO topic (title, description, created, author, profile)  \
            VALUES('Mongus Server', 'Mongus Server is...', NOW(), 'Admin', 'is admin...');
\! echo ""

\! echo "reading a row in the table!"
\! echo "- select all data"
-- selecting all the data from topic
SELECT * FROM topic;
\! echo ""