--Admin Perspective "Query Challenges"

--QUESTION 1
INSERT INTO Course VALUES
(5, 'Software Engineering', 'Data', '25', 'Advanced');

--QUESTION 2
INSERT INTO Schedule VALUES
(5, 5, 3, '2025-08-01', '2025-08-10', 'Weekend');

--QUESTION 3
SELECT E.Trainee_id, S.Schedule_id,S.Course_id,S.Trainer_id,S.Start_date,S.End_date,S.Time_slot,C.Title
FROM Enrollment E
JOIN Course C ON C.Course_id=E.Course_id
JOIN Schedule S ON S.Course_id=E.Course_id
ORDER BY E.Trainee_id;

--QUESTION 4
SELECT R.Trainer_id,R.TrName, COUNT(C.Course_id) AS TotalnumofCourses
FROM Trainer R
JOIN Schedule S ON S.Trainer_id=R.Trainer_id
JOIN Course C ON C.Course_id=S.Course_id
GROUP BY R.Trainer_id,R.TrName;

--QUESTION 5
SELECT * FROM Course
SELECT T.TName, T.Email, C.Title
FROM Trainee T
JOIN Enrollment E ON E.Trainee_id=T.Trainee_id
JOIN Course C ON C.Course_id=E.Course_id
WHERE C.Title='Database Fundamentals' --IF I write the "Data Basics" their will be no result since their is NO Course named "Data Basics"
ORDER BY T.TName;

--QUESTION 6
SELECT TOP 1 
	C.Title,COUNT(*) AS HighestCourseEnrolled 
FROM Enrollment E
JOIN Course C ON C.Course_id=E.Course_id
GROUP BY C.Title
ORDER BY HighestCourseEnrolled DESC;

--QUESTION 7
SELECT * FROM Schedule
ORDER BY Start_date;
