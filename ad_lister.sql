
CREATE DATABASE IF NOT EXISTS ad_lister;
USE ad_lister;


CREATE TABLE user (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name  VARCHAR(100) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INTEGER UNSIGNED NOT NULL,
  title VARCHAR(50) NOT NULL,
  description VARCHAR(140) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE category (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  topic_id VARCHAR(50),
  PRIMARY KEY (id)
);


CREATE TABLE ads_category (
  ads_id INTEGER UNSIGNED NOT NULL,
  category_id INTEGER UNSIGNED NOT NULL,
  FOREIGN KEY (ads_id) REFERENCES ads(id),
  FOREIGN KEY (category_id) REFERENCES category(id)
);




INSERT INTO user(first_name, last_name, email, password) VALUES
  ('Hermina', 'Triano', 'hermina@verizon.net', '#K&e$22@jC'),
  ('Beverlee', 'Nobile', 'beverless@att.net', 'wG:$WRu3mz'),
  ('Meryl', 'Whittingham', 'meryl@icloud.com', '6P]FjD4vA4'),
  ('Krissy', 'Maughan', 'krissy@me.com', 'Sne8k9N?a_'),
  ('Felicitas', 'Pinnix', 'felicitas@me.com', 'J-_WUf&J4R'),
  ('Oliva', 'Mccaul', 'oliva@yahoo.com', '6D@S=fh6ev'),
  ('Edwardo', 'Couture', 'edwardo@sbcglobal.com', 'TE7k6@98vp'),
  ('Maryalice', 'Graber', 'maryalice@outlook.com', '48Ns$H2W=N'),
  ('Slyvia', 'Suda', 'slyvia@live.net', '^UGy8stQK2'),
  ('Kermit', 'Nethery', 'kermit@msn.com', '7wd86F$Wx2'),
  ('Ethan', 'Northcutt', 'ethan@hotmail.com', '%5W3dwQ#c7'),
  ('Yuriko', 'Marr', 'yuriko@hotmail.com', '9F@bvE8@wk'),
  ('Dominique', 'Will', 'dominique@aol.com', '-E%3de7W%+'),
  ('Carla', 'Ficklin', 'carla@yahoo.ca', 'NTmJDm^$7&'),
  ('Leisa', 'Doran', 'leisa@msn.com', '^z7Uksh&a3'),
  ('Nakia', 'Pavia', 'nakia@yahoo.com', 'B7Ym&+MjJJ'),
  ('Laverna', 'Winton', 'laverna@mac.com', '=XpF9y?zj-'),
  ('Naoma', 'Pickering', 'naoma@comcast.net', 'R8SSw7S-y3'),
  ('Julieann', 'Gierlach', 'julieann@yahoo.com', 'PNmUD9L?wy'),
  ('Evelina', 'Nealy', 'evelina@comcast.net', 'PNmUD9L?wy'),
  ('Merrill', 'Tamura', 'merrill@yahoo.com', '_SUX3_9?f^'),
  ('Dick', 'Snapp', 'dick@live.com', 'x239TXg^x#'),
  ('Clarine', 'Pendergrast', 'clarine@me.com', 'a2m!UZW5xc'),
  ('Tamatha', 'Cybart', 'tamatha@att.net', '3tZ7kQL-6^'),
  ('Margorie', 'Wong', 'margorie@me.com', 'Ykj@mJ2Jms'),
  ('Dagny', 'Trivette', 'dagny@yahoo.com', '-$s4z&sJQ@'),
  ('Stanton', 'Dougherty', 'stanton@yahoo.com', '-rgb+@7D6V'),
  ('Dalila', 'Alvares', 'dalila@yahoo.com', 'xT_4Yfey72'),
  ('Devora', 'Taube', 'devora@aol.com', 'N22ZJ7!mvV'),
  ('Shelia', 'Kriss', 'shelia@att.net', '$TXqbud4$&'),
  ('Norbert', 'Chouinard', 'norbert@yahoo.ca', '&eyx7mST+J'),
  ('Luis', 'Dearmond', 'luis@mac.com', 'M*8Znbt*TA'),
  ('Wilbur', 'Luque', 'wilbur@hotmail.com', 'SN!$fprR4f'),
  ('Latoria', 'Mahaney', 'latoria@msn.com', '%!&srW@6Gt'),
  ('Hassie', 'Mendicino', 'hassie@att.net', 'Ujws5j52-Q'),
  ('Leonardo', 'Debellis', 'leonardo@aol.com', 'y%Mf3dxC_W'),
  ('Angelo', 'Toomer', 'angelo@yahoo.ca', 'L8u4m_PP*s'),
  ('Julie', 'Koening', 'julie@verizon.net', '+kYVP8=37A'),
  ('Nichole', 'Shellhammer', 'nichole@outlook.com', 'kQ=*75S=ge'),
  ('Glennis', 'Matranga', 'glennis@icloud.com', 'PdDpLyL2%R'),
  ('Rueben', 'Spangler', 'rueben@men.com', 'd^!8A6&&we'),
  ('Valery', 'Mosqueda', 'valery@sbcglobal.com', 'vLW9%@*krm'),
  ('Estela', 'Mckelvy', 'estela@live.com', '3Dc+-R7#fs'),
  ('Debbi', 'Dees', 'debbi@msn.com', 'n3Q@t2WwdP'),
  ('Grisel', 'Rothstein', 'grisel@att.net', 'v2e!J9#vkn'),
  ('Jazmin', 'Forti', 'jazmin@yahoo.com', 'SY%5bG3TEj'),
  ('Yolanda', 'Whicker', 'yolanda@hotmale.com', 'X-q4rUH@Gd'),
  ('Gerda', 'Watley', 'gerda@icloud.com', 'Qu?G!u5K4!'),
  ('Danica', 'Lehrer', 'danica@aol.com', '&r#847?LEN'),
  ('Sha', 'Pai', 'sha@comcast.net', 'KLX9*7yU7e');

INSERT INTO ads ( title, description, user_id) VALUES
  ('Book', 'Just a bunch of books. They are great books.', '2');



INSERT INTO category (topic_id) VALUES
  ('Car'),
  ('Jewelry'),
  ('Clothing'),
  ('Electronics'),
  ('Art'),
  ('Home'),
  ('Sports'),
  ('Toys'),
  ('Furniture'),
  ('Tools'),
  ('Services'),
  ('Books');


INSERT INTO ads_category (ads_id, category_id) VALUES
  (2, 10),
  (2, 5);



-- ////////////////////////////////////////////////////////////////////////////// --

-- For a given ad, what is the email address of the user that created it?

SELECT CONCAT(u.first_name, ' ', u.last_name) AS Name , u.email AS Email
FROM ads
  JOIN user u
    ON ads.user_id = u.id;



-- For a given ad, what category, or categories, does it belong to?

SELECT ads.title AS 'AD', category.topic_id AS 'Category'
FROM ads_category
  JOIN ads
    ON ads.id = ads_category.ads_id
  JOIN category
    ON ads_category.category_id = category.id;




-- For a given category, show all the ads that are in that category.

SELECT category.topic_id AS 'Category', ads.title AS 'AD'
FROM ads_category
  JOIN ads
    ON ads.id = ads_category.ads_id
  JOIN category
    ON ads_category.category_id = category.id;




-- For a given user, show all the ads they have posted.
SELECT CONCAT( user.first_name, ' ', user.last_name) AS 'User', a.title AS "Ad Posting"
FROM user
  JOIN ads a ON user.id = a.user_id;


