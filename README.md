🎬 Cinema App (Flutter)

Cinema App is a Flutter-based application for browsing movies and TV series metadata and playing external video streams inside the app.
The project focuses on clean architecture, scalable state management, and modern video playback in Flutter.

📱 Features

Browse movies and TV series

View detailed content information

Season and episode navigation

In-app video player

Multiple video quality support

Fullscreen playback

Error and loading state handling

Clean and maintainable project structure

🛠 Tech Stack

Flutter (Dart)

State Management: Provider / Cubit

Networking: Dio

Video Playback:

video_player

chewie / better_player

Architecture: Clean Architecture

Platforms: Android (iOS ready)

📂 Project Structure
lib/
├── core/
│   ├── network/
│   ├── constants/
│   └── utils/
├── features/
│   ├── home/
│   ├── details/
│   └── video_player/
├── models/
├── providers / cubits
└── main.dart

▶️ Video Player Capabilities

Plays network videos (MP4, HLS .m3u8)

Full playback controls

Automatic loading indicator

Prepared for quality switching

Supports future subtitle integration

🚀 Getting Started
Prerequisites

Flutter SDK (latest stable)

Android Studio or VS Code

Android Emulator or Physical Device

Installation
git clone https://github.com/MohamedMahmoudAli/cinemaApp.git
cd cinemaApp
flutter pub get
flutter run

🧪 Sample Content

For testing and development, public demo videos can be used, such as:

https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4


Mock APIs or placeholder JSON responses are recommended during development.

⚠️ Disclaimer

This application does not host, store, or distribute any media files.

All video content is loaded from external third-party sources provided by APIs or user input.
The developer of this project is not responsible for the content accessed through the application.

This project is intended for educational and learning purposes only.

🔐 Legal Notice

No copyrighted media is included in this repository

No private or paid streaming links are hardcoded

No DRM-protected content is bypassed

If you are a content owner and believe any material violates your rights, please contact the respective content provider.

🧑‍💻 Author

Mohamed Mahmoud
Flutter Developer

🤝 Contributions

Contributions, issues, and feature requests are welcome.

Fork the repository

Create a new branch

Commit your changes

Open a Pull Request

⭐ Support

If you find this project useful, please consider giving it a star.
