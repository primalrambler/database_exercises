USE codeup_test_db;

-- SELECT 'Albums released after 1991' as 'Query Attempted';
-- SELECT artist, name, release_date FROM albums
DELETE FROM albums
WHERE release_date > 1991;

-- SELECT 'Disco Albums' as 'Query Attempted';
-- SELECT artist, name, genre FROM albums
DELETE FROM albums
WHERE genre LIKE '%disco%';

-- SELECT 'Whitney Houston Albums' as 'Query Attempted';
-- SELECT artist, name, genre FROM albums
DELETE FROM albums
WHERE artist LIKE '%Whitney Houston%';

SELECT * FROM albums;