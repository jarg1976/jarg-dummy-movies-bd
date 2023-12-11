USE movies;

DROP TABLE IF EXISTS reviewers;

CREATE TABLE reviewers(
  id INT,
  name VARCHAR(20) NULL
);

ALTER TABLE reviewers
ADD
    CONSTRAINT pk_reviewers_id PRIMARY KEY (id),
    MODIFY id INT UNSIGNED NOT NULL AUTO_INCREMENT;

DESCRIBE reviewers;

INSERT INTO reviewers(id, name)
VALUES
(9001, 	'Righty Sock'),
(9002, 	'Jack Malvern'),
(9003, 	'Flagrant Baronessa'),
(9004, 	'Alec Shaw'),
(9005, 	NULL),
(9006, 	'Victor Woeltjen'),
(9007, 	'Simon Wright'),
(9008, 	'Neal Wruck'),
(9009, 	'Paul Monks'),
(9010, 	'Mike Salvati'),
(9011, 	NULL),
(9012, 	'Wesley S. Walker'),
(9013, 	'Sasha Goldshtein'),
(9014, 	'Josh Cates'),
(9015, 	'Krug Stillo'),
(9016, 	'Scott LeBrun'),
(9017, 	'Hannah Steele'),
(9018, 	'Vincent Cadena'),
(9019, 	'Brandt Sponseller'),
(9020, 	'Richard Adams');