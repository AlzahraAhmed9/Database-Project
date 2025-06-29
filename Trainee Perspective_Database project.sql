--Trainee Perspective "Query Challenges"

--QUETION 1
SELECT Title, Category,Level
FROM Course;

--QUETION 2
SELECT Level, Category
FROM Course
WHERE Category='Data Science' and Level='Beginner';

--QUESTION 3
SELECT T.Trainee_id,C.Title
FROM Trainee T
JOIN Enrollment E ON T.Trainee_id=E.Trainee_id
JOIN Course C ON E.Course_id= C.Course_id
ORDER BY T.Trainee_id;

--QUESTION 4
SELECT E.Trainee_id,  S.Start_date, S.Time_slot 
FROM Enrollment E
JOIN Schedule S ON E.Course_id=S.Course_id
ORDER BY E.Trainee_id;

--QUESTION 5
SELECT E.Trainee_id, COUNT(C.Course_id) AS TotalNumofCourses
FROM Enrollment E
JOIN Course C ON C.Course_id=E.Course_id
GROUP BY  E.Trainee_id;

--QUESTION 6
SELECT R.TrName, C.Title, S.Time_slot
FROM Enrollment E
JOIN Course C ON E.Course_id=C.Course_id
JOIN Schedule S ON C.Course_id=S.Course_id
JOIN Trainer R ON R.Trainer_id=S.Trainer_id
ORDER BY E.Trainee_id;



