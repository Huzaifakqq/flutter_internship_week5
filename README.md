# Flutter Developers Internship - Week 5

## Firebase Authentication & Firestore Database
**Deadline:** 28th April, 2026  
**Developer:** Huzaifa Kashif

---

## 📝 Project Overview
This phase of the internship focuses on integrating backend services using **Firebase**. The application implements a secure User Authentication workflow and utilizes **Cloud Firestore** for real-time data storage and retrieval.

## 🚀 Week 5 Features
- **Firebase Authentication:** - Complete Login and Sign-Up flow using Email/Password.
  - Form validation and error feedback for failed attempts.
- **Cloud Firestore Integration:** - User details (Name and Email) are stored in a `users` collection upon registration.
  - Real-time data fetching using `StreamBuilder` to display user profiles.
- **Modular Architecture:** - Separated logic into `AuthService` to keep UI code clean and maintainable.

## 🛠️ Tech Stack
- **Framework:** Flutter
- **Database:** Google Cloud Firestore
- **Auth:** Firebase Authentication
- **Build System:** Gradle (Kotlin DSL / `.kts`)

## ⚙️ Setup & Configuration
To run this project, ensure you have a Firebase project set up:
1. **Android Setup:**
   - The `google-services.json` file must be placed in the `android/app/` directory.
   - The project uses **Kotlin DSL**, so the Google Services plugin is applied in `build.gradle.kts`.
2. **Firebase Console:**
   - Enable **Email/Password** under the Authentication tab.
   - Create a **Firestore Database** in Test Mode.
3. **Dependencies:**
   - Run `flutter pub get` to install `firebase_core`, `firebase_auth`, and `cloud_firestore`.

## 📸 Deliverables
- [x] Firebase Configuration
- [x] Login/Signup Screens
- [x] Profile Screen with Firestore data retrieval
- [x] Clean, documented source code

---
*Submitted to DevelopersHub Corporation.*