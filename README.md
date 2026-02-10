# 🔐 RevPasswordManager – Secure Password Management System

<p align="center">

<img src="https://img.shields.io/badge/Java-17-orange?style=for-the-badge&logo=openjdk"/>
<img src="https://img.shields.io/badge/MySQL-Database-blue?style=for-the-badge&logo=mysql"/>
<img src="https://img.shields.io/badge/JDBC-Connector-yellow?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Security-AES%20256-green?style=for-the-badge&logo=protonvpn"/>
<img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge"/>

</p>

---

## 📌 Overview

RevPassword Manager is a secure, console-based password management application built using **Java**, **MySQL**, and **JDBC**.  
It allows users to safely store, retrieve, and manage passwords through encryption and verification mechanisms.

### ✨ Key Features

| Feature | Description |
|--------|-------------|
| 🔐 AES Encryption | Securely stores passwords using AES-256 |
| 👤 User Authentication | Login, registration, and validations |
| 🔏 Multi-Account Storage | Store multiple passwords per user |
| ❓ Security Questions | Required for account recovery |
| 🔁 Verification Codes | Enables secure password reset |
| 🧱 Multi-Layer Architecture | Clean, modular codebase |

---

## 🏗️ Architecture Diagram

![Architecture Diagram](./Architectural_Diagram.jpeg)

### ✔️ Layers

#### Presentation Layer
- MainApp.java → handles user interactions

#### Service Layer
- UserService  
- PasswordService  
- SecurityService  
- VerificationCodeService  

#### DAO Layer
- UserDAO  
- PasswordDAO  
- SecurityQuestionDAO  
- VerificationCodeDAO  

#### Utility Layer
- DBConnectionUtil  
- AESUtil / PasswordUtil  
- EmailValidatorUtil  
- PasswordValidatorUtil  

---

## 🗃️ ER Diagram

![ER Diagram](./ER_Diagram.jpeg)

### ✔️ Entities
- Users  
- Passwords  
- Security Questions  
- User Security Answers  
- Verification Codes  

### ✔️ Relationships
- One user → many passwords  
- One user → many answers  
- One question → many user answers  
- One user → many verification codes  

---

## 📂 Project Structure

```
RevPasswordManager/
│
├── com.revature.main
│     └── MainApp.java
│
├── com.revature.service
│     ├── UserService.java
│     ├── PasswordService.java
│     ├── SecurityService.java
│     └── VerificationCodeService.java
│
├── com.revature.dao
│     ├── UserDAO.java
│     ├── PasswordDAO.java
│     ├── SecurityQuestionDAO.java
│     └── VerificationCodeDAO.java
│
├── com.revature.model
│     ├── User.java
│     ├── PasswordEntry.java
│     ├── SecurityQuestion.java
│     ├── UserSecurityAnswer.java
│     └── VerificationCode.java
│
├── com.revature.util
│     ├── DBConnectionUtil.java
│     ├── AESUtil.java
│     ├── EmailValidatorUtil.java
│     └── PasswordValidatorUtil.java
│
└── resources/
      └── database.sql
```

---

## 💾 Database Tables

### ✔️ `users`
| Column | Type |
|--------|------|
| user_id | INT (PK) |
| name | VARCHAR |
| email | VARCHAR |
| password | VARCHAR |

### ✔️ `passwords`
| Column | Type |
|--------|------|
| step_id | INT (PK) |
| user_id | INT (FK) |
| account_name | VARCHAR |
| username | VARCHAR |
| password | VARCHAR (AES Encrypted) |

### ✔️ `security_questions`
| Column | Type |
|--------|------|
| question_id | INT (PK) |
| question_text | VARCHAR |

### ✔️ `user_security_answers`
| Column | Type |
|--------|------|
| answer_id | INT (PK) |
| user_id | INT (FK) |
| question_id | INT (FK) |
| answer_text | VARCHAR |

### ✔️ `verification_codes`
| Column | Type |
|--------|------|
| code_id | INT (PK) |
| user_id | INT (FK) |
| code | VARCHAR |
| expiry_time | DATETIME |

---

## 🔐 Security Features

- AES-256 encryption  
- Email & password format validation  
- Security question verification  
- Verification-code-based password reset  
- SQL Injection protection with Prepared Statements  

---

## ▶️ How to Run

1. Import into **IntelliJ** or **Eclipse**  
2. Update MySQL credentials in `DBConnectionUtil.java`  
3. Run `database.sql` to create tables  
4. Execute `MainApp.java`  
5. Use the console-based UI  

---

## 📌 GitHub Description

```
RevPassword Manager is a secure Java-based password management system using MySQL and JDBC.
It uses AES encryption, security questions, and verification codes to securely store and manage passwords.
Built with a clean multi-layer architecture, perfect for showcasing backend development and database skills.
```

---

## 🚀 Future Enhancements

- JavaFX GUI  
- MFA (Multi-Factor Authentication)  
- Password Strength Meter  
- Secure Cloud Sync  
