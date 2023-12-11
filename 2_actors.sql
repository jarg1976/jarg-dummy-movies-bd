USE movies;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS actors;

CREATE TABLE actors(
  id INT,
  fname VARCHAR(20) NOT NULL,
  lname VARCHAR(20) NOT NULL,
  gender CHAR(1) NOT NULL
);
SET FOREIGN_KEY_CHECKS = 1;
ALTER TABLE actors
  ADD CONSTRAINT pk_actors_id PRIMARY KEY (id),
  MODIFY id INT UNSIGNED NOT NULL AUTO_INCREMENT;

DESCRIBE actors;

INSERT INTO actors(id, fname, lname, gender)
 VALUES 
    (101, 	'James'    , 'Stewart',    'M'),
    (102, 	'Deborah'  , 'Kerr',       'F'),
    (103, 	'Peter'    , 'OToole',     'M'),
    (104, 	'Robert'   , 'De Niro',    'M'),
    (105, 	'F. Murray', 'Abraham',    'M'),
    (106, 	'Harrison' , 'Ford',       'M'),
    (107, 	'Nicole'   , 'Kidman',     'F'),
    (108, 	'Stephen'  , 'Baldwin',    'M'),
    (109, 	'Jack'     , 'Nicholson',  'M'),
    (110, 	'Mark'     , 'Wahlberg',   'M'),
    (111, 	'Woody'    , 'Allen',      'M'),
    (112, 	'Claire'   , 'Danes',      'F'),
    (113, 	'Tim'      , 'Robbins',    'M'),
    (114, 	'Kevin'    , 'Spacey',     'M'),
    (115, 	'Kate'     , 'Winslet',    'F'),
    (116, 	'Robin'    , 'Williams',   'M'),
    (117, 	'Jon'      , 'Voight',     'M'),
    (118, 	'Ewan'     , 'McGregor',   'M'),
    (119, 	'Christian', 'Bale',       'M'),
    (120, 	'Maggie'   , 'Gyllenhaal', 'F'),
    (121, 	'Dev'      , 'Patel',      'M'),
    (122, 	'Sigourney', 'Weaver',     'F'),
    (123, 	'David'    , 'Aston',      'M'),
    (124, 	'Ali'      , 'Astin',      'F');

