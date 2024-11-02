CREATE DATABASE Fitness_Center_DB;
USE Fitness_Center_DB;

CREATE TABLE members (
    member_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT
);

CREATE TABLE workoutSessions (
    session_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO members (
	name,
    age
)
VALUES (
	'Bill',
    38
);

INSERT INTO members (name, age)
VALUES
	('Marky', 42),
    ('Lauren', 23),
    ('Drake', 24),
    ('Isaiah', 32);

DELETE FROM members
WHERE member_id = 3;

SELECT * FROM members;
