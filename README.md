🤰 PregnancyUAE – Mobile Application

A modern, pixel-perfect Flutter mobile application designed for pregnancy care and wellness.
The app follows a clean GetX + MVVM architecture, supports localization, and focuses on UI accuracy, scalability, and maintainability.

🚀 Features

📱 iOS-first pixel-perfect UI

🧱 GetX + MVVM architecture

🌍 Multi-language support (Localization)

🧭 Centralized routing system

🎨 Reusable colors, fonts, and components

🧩 Modular & scalable folder structure

🔽 Fixed bottom navigation bar

🧠 Separation of UI and business logic

🏗️ Project Architecture

The project strictly follows MVVM with GetX:

lib/
│
├── data/
│   ├── network/
│   ├── response/
│   └── api_exceptions.dart
│
├── models/
│
├── resources/
│   ├── assets/
│   ├── colors/
│   ├── fonts/
│   └── components/
│
├── getx_localization/
│
├── routes/
│
├── utils/
│
lib/view/home/
├── widgets/
│   ├── home_app_bar.dart      (Logo & Icons)
│   ├── home_search_bar.dart   (Search with Pink icon)
│   └── home_progress_card.dart (Gradient bar, 75%, Weekly Focus)
├── home_controller.dart
└── home_view.dart             (Clean assembly file)
│
└── main.dart

Architecture Principles

View

UI only

No business logic

Controller

State management

API & logic handling

Model

Data representation

Resources

Colors, fonts, assets, reusable widgets

Routes

Centralized navigation

Localization

No hardcoded strings

🎨 UI & Design Rules

Pixel-perfect spacing & alignment

No arbitrary padding or margins

Colors defined only in app_colors.dart

Fonts defined only in app_fonts.dart

SafeArea respected (notch & home indicator)

Vertical scroll for complete home screen

🌍 Localization

All text is localized

No hardcoded strings in UI

Keys are maintained in:

getx_localization/languages.dart

🧭 Navigation

Uses GetX named routes

Route names are centralized in:

routes/routes_name.dart

🛠️ Tech Stack

Flutter

Dart

GetX

MVVM Architecture

▶️ Getting Started
Prerequisites

Flutter SDK

Android Studio / VS Code

Android Emulator or Physical Device

📸 Screen Shots 

<img src="https://github.com/user-attachments/assets/07ba771e-5129-4cfe-ac60-b6df94835f2b" width="280" alt="ss1" />

<img src="https://github.com/user-attachments/assets/13012b60-0dac-4ac0-9881-29461eba3a4b" width="280" alt="ss2" />

<img src="https://github.com/user-attachments/assets/6e60a9fa-8fee-4bc1-bed3-33f4d649591a" width="280" alt="ss3" />

