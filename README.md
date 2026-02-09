# 🔐 RevPasswordManager – Secure Password Management System

RevPasswordManager is a **console-based password management application** built using **Java, JDBC, and MySQL**.  
It allows users to securely store, retrieve, and manage their passwords with features like encryption, OTP verification, and security questions.

---

## 📘 Features

### 👤 User Management
- Register with name, email, and master password  
- Login with email and master password  
- Forgot Password recovery:
  - Security question  
  - OTP verification (5-minute expiry)  
- Update profile (name, email)

---

### 🔒 Password Vault Features
- Add new account passwords  
- View all saved accounts  
- View a single password (requires master password re-entry)  
- Update stored passwords  
- Delete account passwords  
- Search passwords by account name  

---

### 🛡 Security Features
- Strong master password validation  
- Password encryption for safe storage  
- Security question for account recovery  
- OTP (One-Time Password) for sensitive operations  
- OTP marked as used after verification  

---

### ⚙️ Additional Features
- Strong password generator:
  - Custom length  
  - Uppercase / numbers / special characters options  

---

## 🏗 ER Diagram

```
Users (user_id PK)
        |
        | 1-to-1
        |
Security_Questions (user_id FK)

Users (user_id PK)
        |
        | 1-to-many
        |
Password_Entries (entry_id PK)

Users (user_id PK)
        |
        | 1-to-many
        |
Verification_Codes (code_id PK)
```

---

## 🗂 Project Architecture

The project follows a **Layered Architecture**:

```
Main Layer (UI Layer)
Service Layer (Business Logic)
DAO Layer (Database Access)
Model Layer (Data Classes)
Utility Layer (DB Connection & Helpers)
```

### Layer Breakdown

#### 1️⃣ Main Layer
**Package:** `com.RevPasswordManager.Main`  
- Handles user input  
- Displays menus  
- Calls service methods  

#### 2️⃣ Service Layer
**Package:** `com.RevPasswordManager.Service`  
- Business logic  
- All validations  
- Coordinates DAO and Main  

#### 3️⃣ DAO Layer
**Package:** `com.RevPasswordManager.DAO`  
- JDBC operations  
- CRUD queries  
- Interacts with MySQL database  

#### 4️⃣ Model Layer
**Package:** `com.RevPasswordManager.Model`  
- POJOs for User, PasswordEntry  
- Represents database rows  

#### 5️⃣ Utility Layer
**Package:** `com.RevPasswordManager.Util`  
- DBConnection  
- PasswordValidatorUtil  
- Other helpers  

---

## 🛢 Database Structure

### Users Table
- user_id (PK)  
- name  
- email  
- password  

### Security_Questions Table
- user_id (FK)  
- question_id  
- answer  

### Verification_Codes Table
- code_id (PK)  
- user_id (FK)  
- code  
- expiry_time  
- is_used  

### Password_Entries Table
- entry_id (PK)  
- user_id (FK)  
- account_name  
- username  
- encrypted_password  

---

## ▶️ How to Run

### 1️⃣ Import into Eclipse
- File → Import → Existing Java Project → Select project folder

### 2️⃣ Configure Database
- Create a MySQL database  
- Run the `RevPasswordManagerDB.sql` file  
- Update DBConnection.java:

```java
String url = "jdbc:mysql://localhost:3306/YOUR_DB_NAME";
String username = "root";
String password = "your_mysql_password";
```

### 3️⃣ Run Application
- Open `MainApplication.java`
- Right-click → Run As → Java Application

---

## 🔐 Forgot Password Workflow

1. Enter registered email  
2. Answer security question  
3. Receive OTP (printed in console)  
4. Enter OTP  
5. Reset master password  

---

## 🧑‍💻 Developer

**Jagadesh Sai**  
Java Developer | JDBC | MySQL | Console Applications

---

## ⭐ Future Enhancements
- GUI (JavaFX / Swing) version  
- Multi-factor authentication  
- Export/Import vault  
- Cloud sync  

---

## 📜 License
This project is for learning and educational purposes only.
