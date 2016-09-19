USE codeup_test_db;


UPDATE albums
SET sales = sales * 10;

SELECT 'All albums' AS 'Query Attempted';
SELECT * FROM albums;

UPDATE albums
SET release_date = 1850
WHERE release_date < 1980;


SELECT 'All albums before 1980' AS 'Query Attempted';
SELECT * FROM albums
WHERE release_date < 1900;


UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'Peter Jackson albums' AS 'Query Attempted';
SELECT name FROM albums
WHERE artist = 'Peter Jackson';