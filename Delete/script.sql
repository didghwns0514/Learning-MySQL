-- use opentutorials schema.
USE opentutorials;

-- see topics table.
SELECT * FROM topic;

-- delete unwanted row data
DELETE FROM topic WHERE title='Egoin';

-- show topics for delete check
SELECT * FROM topic;