-- select columns inside table
USE opentutorials;
-- select everything
\! echo select everything!
SELECT * FROM topic;
\! echo

\! echo select few columns!
-- params after SELECT are aka projections
SELECT id, title, created, author FROM topic;
\! echo

-- select rows with condition
-- eg) my name
\! echo select few columns with condition!
SELECT id, title, created, author FROM topic WHERE author='HJ Yang' ;
\! echo

-- order(sort) data by order
\! echo select few columns with condition and with order!
SELECT id, title, created, author FROM topic WHERE description != '' ORDER BY created DESC; -- ASC is opposite
\! echo

-- limit data output
\! echo select few columns with condition and with order and with limit of number 2!
SELECT id, title, created, author FROM topic WHERE description != '' ORDER BY created DESC LIMIT 2;
\! echo