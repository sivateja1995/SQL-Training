-- Inserting data into the department table
INSERT INTO
    department (name)
VALUES ('Science'),
    ('Mathematics'),
    ('Arts');

-- Inserting data into the teachers table
-- assuming department ids are 1, 2, 3 respectively
INSERT INTO
    teachers (
        name,
        email,
        phone,
        hire_date,
        department_id
    )
VALUES (
        'Mr. Alan Turing',
        'alan.turing@school.edu',
        '123-456-7890',
        '2020-09-01',
        2
    ), -- Mathematics
    (
        'Ms. Marie Curie',
        'marie.curie@school.edu',
        '123-456-7891',
        '2021-08-15',
        1
    ), -- Science
    (
        'Ms. Frida Kahlo',
        'frida.kahlo@school.edu',
        '123-456-7892',
        '2019-10-20',
        3
    );
-- Arts

-- Inserting data into the class table
INSERT INTO
    class (name, section)
VALUES ('Grade 10', 'A'),
    ('Grade 11', 'B');

-- Inserting data into the students table
-- assuming class ids are 1, 2 respectively
INSERT INTO
    students (
        first_name,
        last_name,
        dob,
        gender,
        class_id
    )
VALUES (
        'Alice',
        'Smith',
        '2008-05-15',
        'FEMALE',
        1
    ),
    (
        'Bob',
        'Johnson',
        '2007-08-20',
        'MALE',
        2
    ),
    (
        'Charlie',
        'Brown',
        '2008-02-10',
        'MALE',
        1
    ),
    (
        'Diana',
        'Prince',
        '2007-11-25',
        'FEMALE',
        2
    ),
    (
        'Emily',
        'White',
        '2008-07-22',
        'FEMALE',
        1
    ),
    (
        'Michael',
        'Davis',
        '2007-09-11',
        'MALE',
        2
    ),
    (
        'Jessica',
        'Garcia',
        '2008-04-03',
        'FEMALE',
        1
    ),
    (
        'William',
        'Miller',
        '2007-06-19',
        'MALE',
        2
    ),
    (
        'Olivia',
        'Wilson',
        '2008-11-30',
        'FEMALE',
        1
    ),
    (
        'James',
        'Moore',
        '2007-03-08',
        'MALE',
        2
    ),
    (
        'Sophia',
        'Taylor',
        '2008-09-14',
        'FEMALE',
        1
    ),
    (
        'Daniel',
        'Anderson',
        '2007-10-29',
        'MALE',
        2
    ),
    (
        'Ava',
        'Thomas',
        '2008-01-05',
        'FEMALE',
        1
    ),
    (
        'Ethan',
        'Jackson',
        '2007-05-18',
        'MALE',
        2
    ),
    (
        'Isabella',
        'Lee',
        '2008-03-27',
        'FEMALE',
        1
    ),
    (
        'Mason',
        'Perez',
        '2007-08-02',
        'MALE',
        2
    ),
    (
        'Mia',
        'Harris',
        '2008-10-17',
        'FEMALE',
        1
    ),
    (
        'Liam',
        'Lewis',
        '2007-12-09',
        'MALE',
        2
    ),
    (
        'Charlotte',
        'King',
        '2008-06-25',
        'FEMALE',
        1
    ),
    (
        'Noah',
        'Scott',
        '2007-04-12',
        'MALE',
        2
    );

-- Inserting data into the subject table
-- assuming teacher ids are 1, 2, 3 and class ids are 1, 2
INSERT INTO
    subject (name, teacher_id, class_id)
VALUES ('Algebra', 1, 1),
    ('Physics', 2, 1),
    ('Calculus', 1, 2),
    ('Chemistry', 2, 2),
    ('Art History', 3, 1),
    ('Studio Art', 3, 2);

-- Inserting data into the enrollment table
-- assuming student ids are 1 to 20 and subject ids are 1 to 6
INSERT INTO
    enrollment (student_id, subject_id)
VALUES (1, 1), -- Alice in Algebra
    (1, 2), -- Alice in Physics
    (2, 3), -- Bob in Calculus
    (2, 4), -- Bob in Chemistry
    (3, 1), -- Charlie in Algebra
    (3, 5), -- Charlie in Art History
    (4, 3), -- Diana in Calculus
    (4, 6), -- Diana in Studio Art
    (5, 1), -- Emily in Algebra
    (5, 2), -- Emily in Physics
    (6, 3), -- Michael in Calculus
    (6, 4), -- Michael in Chemistry
    (7, 5), -- Jessica in Art History
    (7, 1), -- Jessica in Algebra
    (8, 6), -- William in Studio Art
    (8, 3), -- William in Calculus
    (9, 2), -- Olivia in Physics
    (9, 5), -- Olivia in Art History
    (10, 4), -- James in Chemistry
    (10, 6), -- James in Studio Art
    (11, 1), -- Sophia in Algebra
    (11, 5), -- Sophia in Art History
    (12, 3), -- Daniel in Calculus
    (12, 4), -- Daniel in Chemistry
    (13, 2), -- Ava in Physics
    (13, 1), -- Ava in Algebra
    (14, 6), -- Ethan in Studio Art
    (14, 3), -- Ethan in Calculus
    (15, 5), -- Isabella in Art History
    (15, 2), -- Isabella in Physics
    (16, 4), -- Mason in Chemistry
    (16, 6), -- Mason in Studio Art
    (17, 1), -- Mia in Algebra
    (17, 5), -- Mia in Art History
    (18, 3), -- Liam in Calculus
    (18, 4), -- Liam in Chemistry
    (19, 2), -- Charlotte in Physics
    (19, 1), -- Charlotte in Algebra
    (20, 6), -- Noah in Studio Art
    (20, 3);
-- Noah in Calculus

-- Inserting data into the marks table
-- scores are between 0 and 100
INSERT INTO
    marks (student_id, subject_id, score)
VALUES (1, 1, 85),
    (1, 2, 92),
    (2, 3, 78),
    (2, 4, 88),
    (3, 1, 75),
    (3, 5, 95),
    (4, 3, 89),
    (4, 6, 91),
    (5, 1, 88),
    (5, 2, 82),
    (6, 3, 79),
    (6, 4, 93),
    (7, 5, 84),
    (7, 1, 76),
    (8, 6, 90),
    (8, 3, 81),
    (9, 2, 70),
    (9, 5, 99),
    (10, 4, 87),
    (10, 6, 74),
    (11, 1, 91),
    (11, 5, 83),
    (12, 3, 77),
    (12, 4, 86),
    (13, 2, 94),
    (13, 1, 80),
    (14, 6, 85),
    (14, 3, 72),
    (15, 5, 96),
    (15, 2, 89),
    (16, 4, 78),
    (16, 6, 84),
    (17, 1, 93),
    (17, 5, 75),
    (18, 3, 82),
    (18, 4, 90),
    (19, 2, 79),
    (19, 1, 88),
    (20, 6, 95),
    (20, 3, 87);

-- Inserting data into the attendance table
-- assuming student ids are 1 to 20 and class ids are 1, 2
INSERT INTO
    attendance (
        student_id,
        class_id,
        attendance_date,
        status
    )
VALUES (1, 1, '2024-08-10', 'PRESENT'),
    (2, 2, '2024-08-10', 'PRESENT'),
    (3, 1, '2024-08-10', 'ABSENT'),
    (4, 2, '2024-08-10', 'LATE'),
    (5, 1, '2024-08-10', 'PRESENT'),
    (6, 2, '2024-08-10', 'PRESENT'),
    (7, 1, '2024-08-10', 'PRESENT'),
    (8, 2, '2024-08-10', 'PRESENT'),
    (9, 1, '2024-08-10', 'ABSENT'),
    (10, 2, '2024-08-10', 'LATE'),
    (
        11,
        1,
        '2024-08-10',
        'PRESENT'
    ),
    (
        12,
        2,
        '2024-08-10',
        'PRESENT'
    ),
    (
        13,
        1,
        '2024-08-10',
        'PRESENT'
    ),
    (
        14,
        2,
        '2024-08-10',
        'PRESENT'
    ),
    (15, 1, '2024-08-10', 'ABSENT'),
    (16, 2, '2024-08-10', 'LATE'),
    (
        17,
        1,
        '2024-08-10',
        'PRESENT'
    ),
    (
        18,
        2,
        '2024-08-10',
        'PRESENT'
    ),
    (
        19,
        1,
        '2024-08-10',
        'PRESENT'
    ),
    (
        20,
        2,
        '2024-08-10',
        'PRESENT'
    ),
    (1, 1, '2024-08-11', 'PRESENT'),
    (2, 2, '2024-08-11', 'PRESENT'),
    (3, 1, '2024-08-11', 'PRESENT'),
    (4, 2, '2024-08-11', 'PRESENT'),
    (5, 1, '2024-08-11', 'PRESENT'),
    (6, 2, '2024-08-11', 'PRESENT'),
    (7, 1, '2024-08-11', 'PRESENT'),
    (8, 2, '2024-08-11', 'PRESENT'),
    (9, 1, '2024-08-11', 'PRESENT'),
    (10, 2, '2024-08-11', 'ABSENT'),
    (
        11,
        1,
        '2024-08-11',
        'PRESENT'
    ),
    (
        12,
        2,
        '2024-08-11',
        'PRESENT'
    ),
    (
        13,
        1,
        '2024-08-11',
        'PRESENT'
    ),
    (
        14,
        2,
        '2024-08-11',
        'PRESENT'
    ),
    (
        15,
        1,
        '2024-08-11',
        'PRESENT'
    ),
    (
        16,
        2,
        '2024-08-11',
        'PRESENT'
    ),
    (17, 1, '2024-08-11', 'ABSENT'),
    (
        18,
        2,
        '2024-08-11',
        'PRESENT'
    ),
    (
        19,
        1,
        '2024-08-11',
        'PRESENT'
    ),
    (
        20,
        2,
        '2024-08-11',
        'PRESENT'
    );

-- Inserting data into the parents table
-- assuming student ids are 1 to 20
INSERT INTO
    parents (
        student_id,
        father_name,
        mather_name,
        email,
        phone
    )
VALUES (
        1,
        'John Smith',
        'Jane Smith',
        'smith.family@email.com',
        '111-222-3333'
    ),
    (
        2,
        'Peter Johnson',
        'Mary Johnson',
        'johnson.family@email.com',
        '444-555-6666'
    ),
    (
        3,
        'Henry Brown',
        'Susan Brown',
        'brown.family@email.com',
        '777-888-9999'
    ),
    (
        4,
        'Clark Kent',
        'Lois Lane',
        'prince.family@email.com',
        '000-111-2222'
    ),
    (
        5,
        'David White',
        'Laura White',
        'white.family@email.com',
        '101-202-3030'
    ),
    (
        6,
        'Robert Davis',
        'Maria Davis',
        'davis.family@email.com',
        '404-505-6060'
    ),
    (
        7,
        'Richard Garcia',
        'Patricia Garcia',
        'garcia.family@email.com',
        '707-808-9090'
    ),
    (
        8,
        'Joseph Miller',
        'Linda Miller',
        'miller.family@email.com',
        '010-101-2020'
    ),
    (
        9,
        'Charles Wilson',
        'Barbara Wilson',
        'wilson.family@email.com',
        '323-434-5454'
    ),
    (
        10,
        'Thomas Moore',
        'Elizabeth Moore',
        'moore.family@email.com',
        '656-767-8787'
    ),
    (
        11,
        'Christopher Taylor',
        'Jennifer Taylor',
        'taylor.family@email.com',
        '989-090-1010'
    ),
    (
        12,
        'Mark Anderson',
        'Jessica Anderson',
        'anderson.family@email.com',
        '212-323-4343'
    ),
    (
        13,
        'Paul Thomas',
        'Sarah Thomas',
        'thomas.family@email.com',
        '545-656-7676'
    ),
    (
        14,
        'George Jackson',
        'Karen Jackson',
        'jackson.family@email.com',
        '878-989-0909'
    ),
    (
        15,
        'Kevin Lee',
        'Nancy Lee',
        'lee.family@email.com',
        '121-232-3434'
    ),
    (
        16,
        'Brian Perez',
        'Betty Perez',
        'perez.family@email.com',
        '454-565-6767'
    ),
    (
        17,
        'Edward Harris',
        'Lisa Harris',
        'harris.family@email.com',
        '787-898-9090'
    ),
    (
        18,
        'Stephen Lewis',
        'Dorothy Lewis',
        'lewis.family@email.com',
        '030-141-2525'
    ),
    (
        19,
        'Jason King',
        'Sandra King',
        'king.family@email.com',
        '363-474-5858'
    ),
    (
        20,
        'Ryan Scott',
        'Ashley Scott',
        'scott.family@email.com',
        '696-707-8181'
    );

-- Inserting data into the activities table
INSERT INTO
    activities (
        name,
        description,
        start_date,
        end_date,
        max_capacity
    )
VALUES (
        'Robotics Club',
        'Build and program robots for competition.',
        '2024-09-01 15:00:00',
        '2024-12-15 17:00:00',
        25
    ),
    (
        'Debate Team',
        'Practice debating skills on various topics.',
        '2024-09-05 16:00:00',
        '2025-01-20 18:00:00',
        15
    );

-- Inserting data into the student_activities table
-- assuming student ids are 1 to 20 and activity ids are 1, 2
INSERT INTO
    student_activities (
        student_id,
        activity_id,
        status,
        completion_date
    )
VALUES (
        1,
        1,
        'progress',
        '2024-12-15 17:00:00'
    ),
    (
        2,
        2,
        'progress',
        '2025-01-20 18:00:00'
    ),
    (
        3,
        1,
        'dropped',
        '2024-10-10 15:30:00'
    ),
    (
        4,
        2,
        'completed',
        '2024-12-01 17:00:00'
    ),
    (
        5,
        1,
        'progress',
        '2024-12-15 17:00:00'
    ),
    (
        6,
        2,
        'progress',
        '2025-01-20 18:00:00'
    ),
    (
        7,
        2,
        'progress',
        '2025-01-20 18:00:00'
    ),
    (
        8,
        1,
        'completed',
        '2024-12-10 17:00:00'
    ),
    (
        9,
        2,
        'dropped',
        '2024-10-15 16:30:00'
    ),
    (
        10,
        1,
        'progress',
        '2024-12-15 17:00:00'
    ),
    (
        11,
        2,
        'progress',
        '2025-01-20 18:00:00'
    ),
    (
        12,
        1,
        'progress',
        '2024-12-15 17:00:00'
    ),
    (
        13,
        2,
        'completed',
        '2024-11-20 17:30:00'
    ),
    (
        14,
        1,
        'progress',
        '2024-12-15 17:00:00'
    ),
    (
        15,
        1,
        'dropped',
        '2024-09-25 15:45:00'
    ),
    (
        16,
        2,
        'progress',
        '2025-01-20 18:00:00'
    ),
    (
        17,
        1,
        'progress',
        '2024-12-15 17:00:00'
    ),
    (
        18,
        2,
        'progress',
        '2025-01-20 18:00:00'
    ),
    (
        19,
        1,
        'completed',
        '2024-11-30 17:00:00'
    ),
    (
        20,
        2,
        'progress',
        '2025-01-20 18:00:00'
    );