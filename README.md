# 🔐 RevPasswordManager – Secure Password Management System

RevPasswordManager is a **console-based password management application** built using **Java, JDBC, and MySQL**.  
It allows users to securely store, retrieve, and manage their passwords with features like encryption, OTP verification, and security questions.

---

## 📘 Features

### 👤 **User Management**
- Register with name, email, and master password  
- Login with email and master password  
- Forgot-Password recovery using:
  - Security question  
  - OTP verification  
- Update profile (name, email)

---

### 🔒 **Password Vault Features**
- Add new account passwords  
- View all saved accounts  
- View a single password (requires master password re-entry)  
- Update stored passwords  
- Delete account passwords  
- Search passwords by account name  

---

### 🛡 **Security Features**
- Master password validation (uppercase, lowercase, digit, special char)  
- Password encryption for safe storage  
- Security question for account recovery  
- OTP (One-Time Password) for sensitive operations (5-minute expiry)  
- OTP marked as used after validation  

---

### ⚙️ **Additional Features**
- Strong password generator  
  - Custom length  
  - Uppercase / numbers / special characters options  

---

## 🗂 **Project Architecture**

