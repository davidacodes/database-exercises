USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUES ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop');

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUES ('AC/DC', 'Back in Black', 1980, 26.1, 'Hard Rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUES ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.2, 'Progressive Rock'),
      ('Meat Loaf', 'Bat Out of Hell', 1977, 21.5, 'Hard Rock'),
      ('Whitney Houston', 'The BodyGuard', 1992, 28.4, 'Soul'),
      ('Eagles', 'Their Greatest Hits', 1976, 32.2, 'Rock'),
      ('Bee Gees', 'Saturday Night Fever', 1977, 32.2, 'Disco'),
      ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft Rock'),
      ('Various artists',	'Grease: The Original Soundtrack',	1978, 38,	'Soundtrack'),
      ('Led Zeppelin',	'Led Zeppelin IV',	1971,	37,'Hard rock, Heavy metal, Folk'),
      ('Michael Jackson',	'Bad',	1987,	35,'Pop, Funk, Rock'),
      ('Alanis ',	'Jagged Little Pill',	1995,	33, 'Alternative rock'),
      ('Shania Twain',	'Come On Over',	1997,	33, 'Country, Pop'),
      ('Celine Dion',	'Falling into You',	1996,	32,'Pop, Soft rock'),
      ('The Beatles',	'Sgt. Pepper''s Lonely Hearts Club Band',	1967,	32,'Rock'),
      ('Eagles',	'Hotel California',	1976, 32,	'Rock, Soft rock, Folk rock'),
      ('Various artists',	'Dirty Dancing',	1987,	32,'Pop, Rock, R&B'),
      ('Adele', '21',	2011, 31,	'Pop, Soul'),
      ('Celine Dion',	'Let''s Talk About Love',	1997, 31,	'Pop, Soft rock'),
      ('The Beatles',	'1',	2000, 31,	'Rock'),
      ('Michael Jackson',	'Dangerous',	1991, 30,	'Rock, Funk, Pop'),
      ('Madonna',	'The Immaculate Collection',	1990,	30,'Pop, Dance'),
      ('The Beatles',	'Abbey Road',	1969,	30, 'Rock'),
      ('Bruce Springsteen',	'Born in the U.S.A.',	1984,	30, 'Rock'),
      ('Dire Straits',	'Brothers in Arms',	1985,	30, 'Rock, Pop'),
      ('James Horner',	'Titanic: Music from the Motion Picture',	1997,	30,'Soundtrack'),
      ('Metallica',	'Metallica',	1991, 30,	'Thrash metal, Heavy metal'),
      ('Nirvana',	'Nevermind',	1991, 30,	'Grunge, Alternative rock'),
      ('Pink Floyd',	'The Wall',	1979,	30,'Progressive rock'),
      ('Santana',	'Supernatural',	1999, 30,	'Rock'),
      ('Guns N'' Roses',	'Appetite for Destruction',	1987,	30, 'Hard rock');



