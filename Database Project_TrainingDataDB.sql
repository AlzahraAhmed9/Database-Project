CREATE DATABASE TrainingDataDB;
USE TrainingDataDB;

CREATE TABLE Trainee (
    Trainee_id INT PRIMARY KEY,
    TName VARCHAR(100),
    Gender VARCHAR(100),
    Email VARCHAR(100),
    Background VARCHAR(20)
);

CREATE TABLE Trainer (
    Trainer_id INT PRIMARY KEY,
    TrName VARCHAR(100),
    Speciality VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Course (
    Course_id INT PRIMARY KEY,
    Title VARCHAR(50),
    Category VARCHAR(50),
    Duration_hours VARCHAR(10),
    Level VARCHAR(30)
);

CREATE TABLE Schedule (
    Schedule_id INT PRIMARY KEY,
    Course_id INT,
    Trainer_id INT,
    Start_date VARCHAR(50),
    End_date VARCHAR(50),
    Time_slot VARCHAR(20),
    FOREIGN KEY (Course_id) REFERENCES Course(Course_id),
    FOREIGN KEY (Trainer_id) REFERENCES Trainer(Trainer_id)
);

CREATE TABLE Enrollment (
    Enrollment_id INT PRIMARY KEY,
    Trainee_id INT,
    Course_id INT,
    Enrollment_date VARCHAR(50),
    FOREIGN KEY (Trainee_id) REFERENCES Trainee(Trainee_id),
    FOREIGN KEY (Course_id) REFERENCES Course(Course_id)
);

-- Trainee
INSERT INTO Trainee VALUES
(1, 'Aisha Al-Harthy', 'Female', 'aisha@example.com', 'Engineering'),
(2, 'Sultan Al-Farsi', 'Male', 'sultan@example.com', 'Business'),
(3, 'Mariam Al-Saadi', 'Female', 'mariam@example.com', 'Marketing'),
(4, 'Omar Al-Balushi', 'Male', 'omar@example.com', 'Computer Science'),
(5, 'Fatma Al-Hinai', 'Female', 'fatma@example.com', 'Data Science');

-- Trainer
INSERT INTO Trainer VALUES
(1, 'Khalid Al-Maawali', 'Databases', '96891234567', 'khalid@example.com'),
(2, 'Noura Al-Kindi', 'Web Development', '96892345678', 'noura@example.com'),
(3, 'Salim Al-Harthy', 'Data Science', '96893456789', 'salim@example.com');

-- Course Data
INSERT INTO Course VALUES
(1, 'Database Fundamentals', 'Databases', '20', 'Beginner'),
(2, 'Web Development Basics', 'Web', '30', 'Beginner'),
(3, 'Data Science Introduction', 'Data Science', '25', 'Intermediate'),
(4, 'Advanced SQL Queries', 'Databases', '15', 'Advanced');

-- Schedule data
INSERT INTO Schedule VALUES
(1, 1, 1, '2025-07-01', '2025-07-10', 'Morning'),
(2, 2, 2, '2025-07-05', '2025-07-20', 'Evening'),
(3, 3, 3, '2025-07-10', '2025-07-25', 'Weekend'),
(4, 4 ,1 ,'2025-07-15' ,'2025-07-22', 'Morning');

-- Enrollment  Data
INSERT INTO Enrollment VALUES
(1, 1, 1, '2025-06-01'),
(2, 2, 1, '2025-06-02'),
(3, 3, 2, '2025-06-03'),
(4, 4, 3, '2025-06-04'),
(5, 5, 3, '2025-06-05'),
(6, 1, 4, '2025-06-06'); 

--Check  that all tables are exsist
SELECT * FROM Enrollment;
SELECT * FROM Course;
SELECT * FROM Trainee;
SELECT * FROM Trainer;
SELECT * FROM Schedule;

