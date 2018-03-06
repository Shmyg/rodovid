CREATE	TABLE my_tree
	(
	person_id	NUMBER,
	last_name	VARCHAR2(40) NOT NULL,
	first_name	VARCHAR2(20) NOT NULL,
	middle_name	VARCHAR2(40),
	birth_date	DATE,
	death_date	DATE,
	mother_id	NUMBER,
	father_id	NUMBER,
	marriage_id	NUMBER,
	CONSTRAINT	pk_my_tree
	PRIMARY	KEY
		(
		person_id
		)
);

ALTER	TABLE my_tree
ADD	CONSTRAINT fk_my_tree_mother
FOREIGN	KEY
	(
	mother_id
	)
REFERENCES my_tree (person_id);

ALTER	TABLE my_tree
ADD	CONSTRAINT fk_my_tree_father
FOREIGN	KEY
	(
	father_id
	)
REFERENCES my_tree (person_id);

CREATE	TABLE my_marriage
	(
	marriage_id	NUMBER NOT NULL,
	start_date	DATE NOT NULL,
	end_date	DATE,
	CONSTRAINT	pk_my_marriage
	PRIMARY KEY
		(
		marriage_id
		)
)
/

ALTER	TABLE my_tree
ADD	CONSTRAINT fk_tree_marriage
FOREIGN	KEY
	(
	marriage_id
	)
REFERENCES my_marriage
/
