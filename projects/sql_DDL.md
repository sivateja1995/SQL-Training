# School Database DDL Reference with ER Diagram

## Table Creation Statements

---

### Students

```sql
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    class_id INT REFERENCES Classes(class_id),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    admission_date DATE,
    is_active BOOLEAN DEFAULT TRUE
);
```

---

### Classes

```sql
CREATE TABLE Classes (
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(20),
    section VARCHAR(5),
    class_teacher_id INT REFERENCES Teachers(teacher_id)
);
```

---

### Teachers

```sql
CREATE TABLE Teachers (
    teacher_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    hire_date DATE,
    subject_id INT REFERENCES Subjects(subject_id)
);
```

---

### Subjects

```sql
CREATE TABLE Subjects (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(100),
    description TEXT,
    grade_level VARCHAR(20)
);
```

---

### Student_Subjects (Many-to-Many)

```sql
CREATE TABLE Student_Subjects (
    student_id INT REFERENCES Students(student_id),
    subject_id INT REFERENCES Subjects(subject_id),
    enrollment_date DATE,
    PRIMARY KEY (student_id, subject_id)
);
```

---

### Exams

```sql
CREATE TABLE Exams (
    exam_id SERIAL PRIMARY KEY,
    exam_name VARCHAR(50),
    exam_date DATE,
    class_id INT REFERENCES Classes(class_id)
);
```

---

### Marks

```sql
CREATE TABLE Marks (
    mark_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id),
    subject_id INT REFERENCES Subjects(subject_id),
    exam_id INT REFERENCES Exams(exam_id),
    marks_obtained INT,
    max_marks INT
);
```

---

### Attendance

```sql
CREATE TABLE Attendance (
    attendance_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id),
    attendance_date DATE,
    status VARCHAR(10) CHECK (status IN ('Present', 'Absent', 'Late'))
);
```

---

### Parents

```sql
CREATE TABLE Parents (
    parent_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    address TEXT
);
```

---

### Student_Parent (Many-to-Many)

```sql
CREATE TABLE Student_Parent (
    student_id INT REFERENCES Students(student_id),
    parent_id INT REFERENCES Parents(parent_id),
    relationship VARCHAR(20),
    PRIMARY KEY (student_id, parent_id)
);
```
