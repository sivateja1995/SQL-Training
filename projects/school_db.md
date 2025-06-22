# School Management System - Database Design Idea

This design aims to be comprehensive enough for practice, including various types of relationships (one-to-many, many-to-many).

## Core Entities (Tables) and their Attributes

### Students
- `student_id` (Primary Key, INT, AUTO_INCREMENT)
- `first_name` (VARCHAR)
- `last_name` (VARCHAR)
- `date_of_birth` (DATE)
- `gender` (ENUM('Male', 'Female', 'Other'))
- `address` (VARCHAR)
- `phone_number` (VARCHAR)
- `email` (VARCHAR, UNIQUE)
- `enrollment_date` (DATE)
- `grade_level` (INT)

### Teachers
- `teacher_id` (Primary Key, INT, AUTO_INCREMENT)
- `first_name` (VARCHAR)
- `last_name` (VARCHAR)
- `date_of_birth` (DATE)
- `gender` (ENUM('Male', 'Female', 'Other'))
- `address` (VARCHAR)
- `phone_number` (VARCHAR)
- `email` (VARCHAR, UNIQUE)
- `hire_date` (DATE)
- `salary` (DECIMAL(10, 2))
- `department_id` (Foreign Key -> Departments.department_id)

### Courses
- `course_id` (Primary Key, INT, AUTO_INCREMENT)
- `course_name` (VARCHAR, UNIQUE)
- `course_code` (VARCHAR, UNIQUE)
- `description` (TEXT)
- `credits` (DECIMAL(3, 1))

### Departments
- `department_id` (Primary Key, INT, AUTO_INCREMENT)
- `department_name` (VARCHAR, UNIQUE)
- `head_teacher_id` (Foreign Key -> Teachers.teacher_id, NULLABLE if no head assigned yet)

### Classes (Represents a specific offering of a course in a term)
- `class_id` (Primary Key, INT, AUTO_INCREMENT)
- `course_id` (Foreign Key -> Courses.course_id)
- `teacher_id` (Foreign Key -> Teachers.teacher_id)
- `semester` (VARCHAR, e.g., 'Fall 2024', 'Spring 2025')
- `academic_year` (INT)
- `start_date` (DATE)
- `end_date` (DATE)
- `room_number` (VARCHAR)
- `schedule` (VARCHAR, e.g., 'MWF 9:00-10:00')

### Enrollments (Junction table for Many-to-Many relationship between Students and Classes)
- `enrollment_id` (Primary Key, INT, AUTO_INCREMENT)
- `student_id` (Foreign Key -> Students.student_id)
- `class_id` (Foreign Key -> Classes.class_id)
- `enrollment_date` (DATE)
- `grade` (VARCHAR, NULLABLE, e.g., 'A', 'B+', 'P', 'F')
- `UNIQUE(student_id, class_id)` (Ensures a student enrolls in a class only once)

### Assignments
- `assignment_id` (Primary Key, INT, AUTO_INCREMENT)
- `class_id` (Foreign Key -> Classes.class_id)
- `assignment_name` (VARCHAR)
- `description` (TEXT)
- `due_date` (DATETIME)
- `max_points` (INT)

### Grades (Individual grades for assignments)
- `grade_id` (Primary Key, INT, AUTO_INCREMENT)
- `enrollment_id` (Foreign Key -> Enrollments.enrollment_id)
- `assignment_id` (Foreign Key -> Assignments.assignment_id)
- `score` (DECIMAL(5, 2))
- `submission_date` (DATETIME)
- `UNIQUE(enrollment_id, assignment_id)` (Ensures one grade per assignment per student enrollment)

### Parents (Or Guardians)
- `parent_id` (Primary Key, INT, AUTO_INCREMENT)
- `first_name` (VARCHAR)
- `last_name` (VARCHAR)
- `phone_number` (VARCHAR)
- `email` (VARCHAR, UNIQUE)
- `address` (VARCHAR)

### Student_Parents (Junction table for Many-to-Many relationship between Students and Parents)
- `student_id` (Foreign Key -> Students.student_id)
- `parent_id` (Foreign Key -> Parents.parent_id)
- `relationship_type` (VARCHAR, e.g., 'Mother', 'Father', 'Guardian')
- `PRIMARY KEY(student_id, parent_id)`

## Relationships

### One-to-Many
- Departments to Teachers (One department has many teachers)
- Courses to Classes (One course can have many classes offered)
- Teachers to Classes (One teacher teaches many classes)
- Classes to Assignments (One class has many assignments)
- Enrollments to Grades (One enrollment has many individual assignment grades)

### Many-to-Many (Resolved via Junction Tables)
- Students to Classes (A student can enroll in many classes, a class can have many students) -> Enrollments table
- Students to Parents (A student can have multiple parents/guardians, a parent/guardian can have multiple children) -> Student_Parents table
- Assignments to Enrollments (An assignment is for a specific class, but grades are tied to individual student enrollments in that class) -> Grades table

## Practice Opportunities
- **SQL DDL**: Write `CREATE TABLE` statements for all tables, including primary keys, foreign keys, constraints (`UNIQUE`, `NOT NULL`, `CHECK`).
- **SQL DML**:
    - `INSERT` data into all tables. Pay attention to foreign key constraints.
    - `SELECT` queries: Simple selects, selects with `WHERE` clauses, `JOIN`s (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`) across multiple tables to answer questions like:
        - "Get all students enrolled in 'Math 101' in Fall 2024."
        - "Find the average grade of 'John Doe' in all his courses."
        - "List all teachers and the departments they belong to."
        - "Show all assignments for 'Chemistry 202' and their due dates."
    - `UPDATE` and `DELETE` data.
- **Indexing**: Consider which columns would benefit from indexing for performance.
- **Views**: Create views for common complex queries.
- **Stored Procedures/Functions**: For more advanced practice.