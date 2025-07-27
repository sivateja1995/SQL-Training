# School Database ER Diagram Reference

This document outlines the entities, attributes, and relationships for the school database DDL.

---

## Entities (Tables) and Their Attributes

Each entity is listed with its attributes.  
- **Primary Keys (PK)** are marked with **(PK)**
- **Foreign Keys (FK)** with **(FK)**
- **Unique constraints** with **(U)**

---

### 1. Students

- `student_id` **(PK)**
- `first_name`
- `last_name`
- `date_of_birth`
- `gender`
- `class_id` **(FK)**
- `email` **(U)**
- `phone_number`
- `admission_date`
- `is_active`

---

### 2. Classes

- `class_id` **(PK)**
- `class_name`
- `section`
- `class_teacher_id` **(FK)**

---

### 3. Teachers

- `teacher_id` **(PK)**
- `first_name`
- `last_name`
- `email` **(U)**
- `phone_number`
- `hire_date`
- `subject_id` **(FK)**

---

### 4. Subjects

- `subject_id` **(PK)**
- `subject_name`
- `description`
- `grade_level`

---

### 5. Student_Subjects (Associative Entity for Many-to-Many)

- `student_id` **(PK, FK)**
- `subject_id` **(PK, FK)**
- `enrollment_date`

---

### 6. Exams

- `exam_id` **(PK)**
- `exam_name`
- `exam_date`
- `class_id` **(FK)**

---

### 7. Marks

- `mark_id` **(PK)**
- `student_id` **(FK)**
- `subject_id` **(FK)**
- `exam_id` **(FK)**
- `marks_obtained`
- `max_marks`

---

### 8. Attendance

- `attendance_id` **(PK)**
- `student_id` **(FK)**
- `attendance_date`
- `status`

---

### 9. Parents

- `parent_id` **(PK)**
- `first_name`
- `last_name`
- `email` **(U)**
- `phone_number`
- `address`

---

### 10. Student_Parent (Associative Entity for Many-to-Many)

- `student_id` **(PK, FK)**
- `parent_id` **(PK, FK)**
- `relationship`

---

## Relationships

This section describes the relationships between the entities, indicating the type of relationship and the participating entities.

---

- **Classes to Students** *(One-to-Many)*  
    - A Class can have many Students.  
    - Each Student belongs to one Class.  
    - **Key:** `Students.class_id` → `Classes.class_id`

- **Teachers to Classes** *(One-to-Many)*  
    - A Teacher can be the class teacher for many Classes.  
    - Each Class has one Class Teacher.  
    - **Key:** `Classes.class_teacher_id` → `Teachers.teacher_id`

- **Subjects to Teachers** *(One-to-Many)*  
    - A Subject can be taught by many Teachers.  
    - Each Teacher is associated with one Subject.  
    - **Key:** `Teachers.subject_id` → `Subjects.subject_id`

- **Students to Subjects** *(Many-to-Many)*  
    - A Student can enroll in many Subjects.  
    - A Subject can be taken by many Students.  
    - **Implemented via:** `Student_Subjects` associative table

- **Classes to Exams** *(One-to-Many)*  
    - A Class can have many Exams.  
    - Each Exam is associated with one Class.  
    - **Key:** `Exams.class_id` → `Classes.class_id`

- **Students to Marks** *(One-to-Many)*  
    - A Student can have many Marks records.  
    - Each Mark record belongs to one Student.  
    - **Key:** `Marks.student_id` → `Students.student_id`

- **Subjects to Marks** *(One-to-Many)*  
    - A Subject can have many Marks records.  
    - Each Mark record is for one Subject.  
    - **Key:** `Marks.subject_id` → `Subjects.subject_id`

- **Exams to Marks** *(One-to-Many)*  
    - An Exam can have many Marks records.  
    - Each Mark record is for one Exam.  
    - **Key:** `Marks.exam_id` → `Exams.exam_id`

- **Students to Attendance** *(One-to-Many)*  
    - A Student can have many Attendance records.  
    - Each Attendance record belongs to one Student.  
    - **Key:** `Attendance.student_id` → `Students.student_id`

- **Students to Parents** *(Many-to-Many)*  
    - A Student can be linked to many Parents.  
    - A Parent can be linked to many Students.  
    - **Implemented via:** `Student_Parent` associative table

