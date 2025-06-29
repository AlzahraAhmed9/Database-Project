# 🧠 SQL & Data Modeling Capstone – Training Institute Database Project

## 📌 Project Overview
This project involves designing, implementing, and querying a relational database system for a training institute. The database supports functionalities for three types of users: Admin, Trainer, and Trainee. The system helps manage trainees, trainers, courses, schedules, and enrollments using SQL and ER modeling.

---

## ✅ What This Project Includes

### 📘 1. **Database Design**
- Identified key entities: `Trainee`, `Trainer`, `Course`, `Schedule`, `Enrollment`
- Designed an **Entity-Relationship Diagram (ERD)** to define entity relationships
- Applied one-to-many and many-to-many relationships appropriately

📝 *Note:* The ERD was drawn based on personal logical interpretation. There is no one "correct" ERD—multiple designs can be valid depending on reasoning.

### 🛠 2. **SQL Implementation**
- Created relational tables with proper primary and foreign key constraints
- Inserted sample data for all entities
- Implemented all required SQL queries for Trainee, Trainer, and Admin perspectives

### 📂 3. **Query Tasks Completed**

#### 👩‍🎓 **Trainee Perspective**
- View all available courses
- Filter courses by level and category
- View enrolled courses
- See schedule of enrolled courses
- Count enrolled courses
- View course title, trainer, and time slot

#### 👨‍🏫 **Trainer Perspective**
- List assigned courses
- View upcoming sessions
- Count enrolled trainees per course
- List trainee names and emails
- Display trainer contact info
- Count courses per trainer

#### 👩‍💼 **Admin Perspective**
- Insert new course
- Create new course schedule
- Join Enrollment, Course, and Schedule tables
- Count assigned courses per trainer
- Identify course with highest enrollment
- Sort all schedules by start date

---

## 🧾 ERD Snapshot

A diagram was created using SQL Server Management Studio (SSMS) showing all 5 core entities with proper foreign key connections. Relationships include:
- `Trainee` ↔ `Enrollment`
- `Course` ↔ `Enrollment`
- `Course` ↔ `Schedule`
- `Trainer` ↔ `Schedule`

---

## 🛠 Error Log Summary

The project includes a maintained error log explaining:
- Common SQL errors (e.g., aggregate misuse, join mismatches)
- Correct error messages from SSMS
- Explanation of causes
- Fixed versions of queries
