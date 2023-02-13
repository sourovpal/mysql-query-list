SHOW INDEX FROM table_name;

ALTER TABLE `table_name` ADD FULLTEXT KEY `name_email` (`name`,`email`);

SELECT * FROM table_name WHERE MATCH(name_email) AGAINST('search text' IN BOOLEAN MODE);






