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

## 🗂 Project Architecture

The project follows a **Layered Architecture**:


### Layer Breakdown

#### 1️⃣ Main Layer
Located in: `com.RevPasswordManager.Main`  
- Handles user input  
- Displays menus  
- Calls service methods  

#### 2️⃣ Service Layer
Located in: `com.RevPasswordManager.Service`  
- Business logic  
- All validations  
- Coordinates DAO and Main  

#### 3️⃣ DAO Layer
Located in: `com.RevPasswordManager.DAO`  
- JDBC operations  
- Database CRUD  
- Executes SQL queries  

#### 4️⃣ Model Layer
Located in: `com.RevPasswordManager.Model`  
- POJOs for User, PasswordEntry  
- Represents database rows  

#### 5️⃣ Utility Layer
Located in: `com.RevPasswordManager.Util`  
- DBConnection  
- PasswordValidatorUtil  
- Encryption utilities (if any)  

---

## 🛢 Database Structure

### **Users Table**
- user_id (PK)  
- name  
- email  
- password  

### **Security_Questions Table**
- user_id (FK)  
- question_id  
- answer  

### **Verification_Codes Table**
- code_id (PK)  
- user_id (FK)  
- code  
- expiry_time  
- is_used  

### **Password_Entries Table**
- entry_id  
- user_id (FK)  
- account_name  
- username  
- encrypted_password  

---
---

