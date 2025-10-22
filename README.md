# 📱 Lavescape - Experience Booking App

A Flutter mobile application for discovering and booking authentic local experiences.

---

## 🖼️ Screenshots

<div align="center">

### Main Screens

| Login | OTP | Explore |
|:---:|:---:|:---:|
| <img src="assets/images/screenshots/login_screen.png" width="250"/> | <img src="assets/images/screenshots/otp_screen.png" width="250"/> | <img src="assets/images/screenshots/explore_screen.png" width="250"/> |

| Search | Map View | Profile Created |
|:---:|:---:|:---:|
| <img src="assets/images/screenshots/search_screen.png" width="250"/> | <img src="assets/images/screenshots/explore_map_screen.png" width="250"/> | <img src="assets/images/screenshots/guest_profile_created.png" width="250"/> |

### Authentication Flow

| Email Signup | Phone Signup | Complete Profile |
|:---:|:---:|:---:|
| <img src="assets/images/screenshots/sign_in_with_email.png" width="250"/> | <img src="assets/images/screenshots/sign_in_with_phone.png" width="250"/> | <img src="assets/images/screenshots/finish_signing_up.png" width="250"/> |

### Search & Filters

| Search Results | Select Date | Select Guests |
|:---:|:---:|:---:|
| <img src="assets/images/screenshots/search_result.png" width="250"/> | <img src="assets/images/screenshots/search_select-date.png" width="250"/> | <img src="assets/images/screenshots/search_select_guests.png" width="250"/> |

### Map Features

| Map View | Expanded Experience |
|:---:|:---:|
| <img src="assets/images/screenshots/explore_map_screen.png" width="250"/> | <img src="assets/images/screenshots/explore_map_floatedex.png" width="250"/> |

</div>

---

## 🎯 About

This is a UI implementation project showcasing a complete mobile app design with authentication, search, and booking features. Built with Flutter following modern design patterns.

---

## ✨ Features

- 🔐 Authentication (Phone/Email signup, OTP verification, Login)
- 🔍 Advanced search with filters (Location, Date, Guests)
- 📅 Interactive date range picker
- 👥 Guest selection (Adults/Children)
- 🗺️ Map and List view toggle
- 🎨 Responsive design for all screen sizes
- ⚡ Smooth animations and transitions

---

## 🛠️ Tech Stack

- **Flutter** 3.0+
- **Dart** 3.0+
- **flutter_screenutil** - Responsive design
- **table_calendar** - Date picker
- **intl_phone_field** - Phone input
- **flutter_svg** - Icons


## 📱 App Flow
```
Authentication → Explore → Search → Results → Map View
```

### Screens Implemented:
- Welcome & Login
- Sign Up (Phone/Email)
- OTP Verification
- Profile Completion
- Explore (Home)
- Search with Filters
- Search Results
- Map View

---

## 🎨 Design

**Color Scheme:**
- Primary: `#9333EA` (Purple)
- Secondary: `#6B7280` (Grey)
- Background: `#FAFAFA`

**UI Features:**
- Clean, modern interface
- Consistent spacing and typography
- Smooth animations
- Intuitive navigation

---

## 📂 Project Structure
```
lib/
├── core/
│   ├── helpers/       # Utils & extensions
│   ├── routing/       # Navigation
│   ├── theme/         # Colors & styles
│   └── widgets/       # Reusable widgets
│
├── feature/
│   ├── auth/          # Authentication
│   ├── explore/       # Main features
│   └── navigation/    # Bottom nav
│
└── main.dart
```

---

## 📝 Note

This is a **UI implementation demo** - no backend integration included. All data is static for demonstration purposes.

