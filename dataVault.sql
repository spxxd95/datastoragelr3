CREATE TABLE Hub_Students (
    student_id SERIAL PRIMARY KEY,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100) NOT NULL
);

CREATE TABLE Hub_Subjects (
    subject_id SERIAL PRIMARY KEY,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100) NOT NULL
);

CREATE TABLE Hub_Lecturers (
    lecturer_id SERIAL PRIMARY KEY,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100) NOT NULL
);

CREATE TABLE Link_Schedules (
    schedule_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Hub_Students(student_id),
    subject_id INT REFERENCES Hub_Subjects(subject_id),
    lecturer_id INT REFERENCES Hub_Lecturers(lecturer_id),
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Sat_Students (
    student_id INT REFERENCES Hub_Students(student_id),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Sat_Subjects (
    subject_id INT REFERENCES Hub_Subjects(subject_id),
    subject_name VARCHAR(100) NOT NULL,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Sat_Lecturers (
    lecturer_id INT REFERENCES Hub_Lecturers(lecturer_id),
    name VARCHAR(100) NOT NULL,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Sat_Schedules (
    schedule_id INT REFERENCES Link_Schedules(schedule_id),
    schedule_date DATE NOT NULL,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
