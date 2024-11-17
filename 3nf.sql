CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Subjects (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL
);

CREATE TABLE Lecturers (
    lecturer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Schedules (
    schedule_id SERIAL PRIMARY KEY,
    subject_id INT REFERENCES Subjects(subject_id),
    lecturer_id INT REFERENCES Lecturers(lecturer_id),
    schedule_date DATE NOT NULL
);
