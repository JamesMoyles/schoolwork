CREATE DATABASE IF NOT EXISTS exam_james;
USE exam_james;

CREATE TABLE IF NOT EXISTS students(
    student_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(40) NOT NULL,
    email VARCHAR(60) NOT NULL,
    password CHAR(40) NOT NULL,
    reg_date DATETIME NOT NULL,
    PRIMARY KEY (student_id),
    UNIQUE (email)
);

CREATE TABLE IF NOT EXISTS subjects(
    subject_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    subject_name VARCHAR(20) NOT NULL,
    level_of_entry VARCHAR(5) NOT NULL,
    exam_board VARCHAR(20) NOT NULL,
    PRIMARY KEY (subject_id)
);

CREATE TABLE IF NOT EXISTS entries(
    entry_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    student_id INT UNSIGNED NOT NULL,
    subject_id INT UNSIGNED NOT NULL,
    date_taken DATETIME,
    PRIMARY KEY (entry_id),
    FOREIGN KEY (student_id) REFERENCES students (student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects (subject_id)
);