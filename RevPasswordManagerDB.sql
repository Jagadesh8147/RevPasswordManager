CREATE DATABASE Rev_Password_Manager;
USE Rev_Password_Manager;
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    master_password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Passwords (
    password_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    account_name VARCHAR(100) NOT NULL,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE
);
CREATE TABLE Security_Questions (
    question_id INT PRIMARY KEY,
    question_text VARCHAR(255) NOT NULL
);
INSERT INTO Security_Questions (question_id, question_text)
VALUES (1, 'What is your Favorite Color?');

CREATE TABLE User_Security_Answers (
    answer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    question_id INT NOT NULL,
    answer VARCHAR(255) NOT NULL,

    FOREIGN KEY (user_id)
        REFERENCES Users(user_id)
        ON DELETE CASCADE,

    FOREIGN KEY (question_id)
        REFERENCES Security_Questions(question_id)
        ON DELETE CASCADE
);
CREATE TABLE Verification_Codes (
    code_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    code VARCHAR(10) NOT NULL,
    expiry_time DATETIME NOT NULL,
    is_used BOOLEAN DEFAULT FALSE,

    FOREIGN KEY (user_id)
        REFERENCES Users(user_id)
        ON DELETE CASCADE
);

ALTER TABLE Verification_Codes
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT FIRST;



Show tables;
select * from users;
select * from verification_codes;