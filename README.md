# Advanced Flutter Project - Omar Ahmed

A professional, feature-driven Flutter application demonstrating Clean Architecture principles, advanced state management, and robust networking.

---

## 🚀 Key Features

- **Clean Architecture**: Organized into `core` and `features` layers for scalability and maintainability.
- **State Management**: Powered by **BLoC** for predictable state transitions.
- **Networking**: High-performance HTTP client using **Dio** and **Retrofit** for type-safe API calls.
- **Dependency Injection**: Managed by **GetIt** for loose coupling.
- **Responsive UI**: Adaptive layouts using **Flutter ScreenUtil**.
- **Localization**: Multi-language support via **Easy Localization**.
- **Code Generation**: Automated model and API client generation with **Freezed** and **Json Serializable**.
- **Logging**: Enhanced debugging with **Pretty Dio Logger**.

---

## 🛠 Tech Stack

| Category | Tools |
| :--- | :--- |
| **Framework** | [Flutter](https://flutter.dev) |
| **State Management** | [flutter_bloc](https://pub.dev/packages/flutter_bloc) |
| **Networking** | [dio](https://pub.dev/packages/dio), [retrofit](https://pub.dev/packages/retrofit) |
| **DI** | [get_it](https://pub.dev/packages/get_it) |
| **UI Utilities** | [flutter_screenutil](https://pub.dev/packages/flutter_screenutil), [flutter_svg](https://pub.dev/packages/flutter_svg) |
| **Localization** | [easy_localization](https://pub.dev/packages/easy_localization) |
| **Dev Tools** | [freezed](https://pub.dev/packages/freezed), [pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger) |

---

## 📂 Project Structure

```text
lib/
├── core/
│   ├── di/             # Dependency Injection setup
│   ├── helpers/        # Utility functions and extensions
│   ├── networking/     # Dio client and API services
│   ├── routing/        # App routing logic
│   ├── theming/        # App-wide styles and colors
│   └── widgets/        # Reusable UI components
└── features/
    └── home/           # Individual feature modules
        ├── ui/
        ├── logic/
        └── data/
```

---

## 🏁 Getting Started

### Prerequisites
- Flutter SDK (v3.12.2 or higher)
- Android Studio / VS Code

### Installation
1.  **Clone the repository**:
    ```bash
    git clone [repository-url]
    ```
2.  **Install dependencies**:
    ```bash
    flutter pub get
    ```
3.  **Run code generation**:
    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```
4.  **Launch the app**:
    ```bash
    flutter run
    ```

---

## 🧪 Testing
Run unit and widget tests using:
```bash
flutter test
```
