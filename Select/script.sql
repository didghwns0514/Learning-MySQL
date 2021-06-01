-- select columns inside table
USE opentutorials;
-- select everything
\! echo select everything!
SELECT * FROM topic;
\! echo
\! echo select few columns!
SELECT id, title, created, author FROM topic;
\! echo