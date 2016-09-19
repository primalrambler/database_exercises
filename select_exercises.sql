USE codeup_test_db;

SELECT 'Album names by Pink Floyd' as 'Query Attempted';
SELECT name FROM albums
WHERE artist = 'Pink Floyd'\G

SELECT 'Year of Sgt. Pepper' as 'Query Attempted';
SELECT release_date FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band'\G

SELECT 'Genre of Nevermind' as 'Query Attempted';
SELECT genre FROM albums
WHERE name = 'Nevermind'\G

SELECT 'Released in the ''90''s' as 'Query Attempted';
SELECT name FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Less than 20M certified sales' as 'Query Attempted';
SELECT name FROM albums
WHERE sales < 20000000;

SELECT 'Albums in rock genre' as 'Query Attempted';
SELECT name FROM albums
WHERE genre LIKE '%rock%';