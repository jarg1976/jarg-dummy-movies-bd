USE movies;

DROP TABLE IF EXISTS directors;

CREATE TABLE directors(
  id INT,
  fname VARCHAR(20) NOT NULL,
  lname VARCHAR(20) NOT NULL
);

ALTER TABLE directors
  ADD CONSTRAINT pk_directors_id PRIMARY KEY(id),
  MODIFY id INT UNSIGNED NOT NULL AUTO_INCREMENT;

DESCRIBE directors;

INSERT INTO directors(id, fname, lname)
  VALUES
(201, 'Alfr', 	        'Hitchcock'),
(202, 'Jack', 	      'Clayton'),
(203, 'David', 	      'Lean'),
(204, 'Michael', 	    'Cimino'),
(205, 'Milos', 	      'Forman'),
(206, 'Ridley', 	    'Scott'),
(207, 'Stanley', 	    'Kubrick'),
(208, 'Bryan', 	      'Singer'),
(209, 'Roman', 	      'Polanski'),
(210, 'Paul', 	      'Thomas Anderson'),
(211, 'Woody', 	      'Allen'),
(212, 'Hayao', 	      'Miyazaki'),
(213, 'Frank', 	      'Darabont'),
(214, 'Sam', 	        'Mendes'),
(215, 'James', 	      'Cameron'),
(216, 'Gus', 	        'Van Sant'),
(217, 'John', 	      'Boorman'),
(218, 'Danny', 	      'Boyle'),
(219, 'Christopher', 	'Nolan'),
(220, 'Richard', 	    'Kelly'),
(221, 'Kevin', 	      'Spacey'),
(222, 'Andrei', 	    'Tarkovsky'),
(223, 'Peter', 	      'Jackson'); 