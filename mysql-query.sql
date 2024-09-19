
SELECT DISTINCT name FROM `users`;

SELECT COUNT(DISTINCT name) as user_name FROM `users`;

SELECT * FROM posts WHERE user_id IN (SELECT DISTINCT id FROM users);
SELECT * FROM posts WHERE user_id IN (SELECT DISTINCT id FROM users WHERE id >2 );

SELECT * FROM users WHERE name IS NULL;
SELECT * FROM users WHERE name IS NOT NULL;

--                          if true 0 false 1;
UPDATE posts SET title = IF(id!='1', '0','1');

--                          if true 100 false 0;
UPDATE posts SET title = IF(id ='1', '100','0');

SELECT * FROM posts WHERE EXISTS (SELECT id FROM users WHERE  id = 100);


SHOW INDEX FROM table_name;

ALTER TABLE `table_name` ADD FULLTEXT KEY `name_email` (`name`,`email`);

SELECT * FROM table_name WHERE MATCH(name_email) AGAINST('search text' IN BOOLEAN MODE);

SELECT * 
FROM users 
WHERE id < (
    SELECT MAX(id) 
    FROM users
);

SELECT * FROM ( SELECT * FROM timelines ORDER BY id DESC LIMIT 2 ) AS last_50 ORDER BY id ASC;





