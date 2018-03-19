USE codeup_test_db;

# The name of all albums by Pink Floyd.
SELECT *  FROM albums WHERE artist = 'Pink Floyd';


# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';


# The genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';


# Which albums were released in the 1990s

SELECT name FROM albums WHERE release_date BETWEEN 1990 and 1999;


# Which albums had less than 20 million certified sales

SELECT name FROM albums WHERE sales < 28.0;

# All the albums with a genre of "Rock". Why do these query results
#    not include albums with a genre of "Hard rock" or "Progressive rock"?

SELECT name FROM albums WHERE genre = 'ROCK';




