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

INSERT INTO workoutsessions ( member_id, session_date, session_time, activity)
VALUES ( 2, '2024-02-04', '2:00 PM', 'Chest'); 

INSERT INTO workoutsessions ( member_id, session_date, session_time, activity)
VALUES 
	( 5, '2024-02-08', '4:30 AM', 'Cardio'), 
    ( 10, '2024-02-24', '8:30 AM', 'Back'),
    ( 14, '2024-02-14', '5:30 PM', 'Cardio'), 
    ( 12, '2024-02-19', '3:30 PM', 'Shoulders'), 
    ( 9, '2024-02-28', '12:30 PM', 'Core'),
    ( 6, '2024-02-12', '11:30 AM', 'Legs');

UPDATE workoutsessions
SET session_date = '2024-02-1'
WHERE member_id = 6;

INSERT INTO members (name, age)
VALUES ('Jane Doe', 33);

INSERT INTO workoutsessions ( member_id, session_date, session_time, activity)
VALUES ( 15, '2024-02-14', '8:00 AM', 'Arms');

UPDATE workoutsessions
SET session_time = '6:30 PM'
WHERE member_id = 15;

INSERT INTO members (name, age)
VALUES ('John Smith', 35);

DELETE FROM members 
WHERE member_id = 16;

SELECT * FROM members;
SELECT * FROM workoutsessions;