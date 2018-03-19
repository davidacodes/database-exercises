
USE codeup_test_db;




# Albums released after 1991
SELECT name FROM albums WHERE release_date > 1991;

# Albums with the genre 'disco'
SELECT id, name FROM albums WHERE genre = 'Disco';

# Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT artist,name FROM albums WHERE artist = 'Whitney Houston';


# //////////////  DELETE STATEMENTS ////////////////



DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'Disco';

DELETE FROM albums WHERE artist = 'Whitney Houston';