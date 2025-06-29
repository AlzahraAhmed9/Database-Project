--Trainer Perspactive--Query challenges

--QUESTION 1
SELECT S.Trainer_id,C.Title
FROM Schedule S
JOIN Course C ON C.Course_id=S.Course_id
ORDER BY S.Trainer_id;

--QUESTION 2
SELECT R.TrName, S.Time_slot, S.Start_date,S.End_date
FROM Schedule S
JOIN Trainer R ON R.Trainer_id=S.Trainer_id;

--QUESTION 3
SELECT R.TrName,R.Trainer_id,C.Course_id,C.Title, COUNT(E.Trainee_id) AS TotalNumofTrainee
FROM Enrollment E
JOIN Course C ON E.Course_id=C.Course_id
JOIN Schedule S ON S.Course_id=C.Course_id
JOIN Trainer R ON R.Trainer_id=S.Trainer_id
GROUP BY R.TrName,R.Trainer_id,C.Course_id, C.Title;

--QUESTION 4
SELECT T.TName, T.Email,R.TrName, C.Title
FROM Enrollment E
JOIN Course C ON E.Course_id=C.Course_id
JOIN Schedule S ON S.Course_id=C.Course_id
JOIN Trainee T ON T.Trainee_id=E.Trainee_id
JOIN Trainer R ON R.Trainer_id=S.Trainer_id
ORDER BY T.TName;

--QUESTION 5
SELECT R.TrName, R.Phone,R.Email,C.Title
FROM Schedule S
JOIN Course C ON C.Course_id=S.Course_id
JOIN Trainer R ON R.Trainer_id=S.Trainer_id
ORDER BY R.TrName;

--QUESTION 6
SELECT R.Trainer_id, R.TrName,COUNT(C.Course_id) AS TotalCoursetrainerteach 
FROM Schedule S
JOIN Course C ON C.Course_id=S.Course_id
JOIN Trainer R ON R.Trainer_id=S.Trainer_id
GROUP BY R.Trainer_id, R.TrName ;

