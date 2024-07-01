Multilingual Adhyatmic Solutions
Multilingual Adhyatmic Solutions is a Flutter application that provides localized spiritual solutions in multiple languages. This app leverages the flutter_gen package for internationalization and the provider package for state management, specifically for changing the app's language.

Features
Multilingual Support: Easily switch between English, Hindi, and Urdu.
Localized Content: All strings and messages are localized using the flutter_gen package.
State Management: The app uses the provider package to manage the language state.
Getting Started
Prerequisites
Flutter SDK: Ensure you have Flutter installed on your machine. You can download it from flutter.dev.
Dart: Dart comes bundled with Flutter.
Installation
Clone the repository:

bash
Copy code
git clone https://github.com/your-username/multilingual-adhyatmic-solutions.git
cd multilingual-adhyatmic-solutions
Install dependencies:

bash
Copy code
flutter pub get
Run the app:

bash
Copy code
flutter run
Folder Structure
lib/
main.dart: Entry point of the application.
home_page.dart: Contains the HomePage widget.
provider/
language_provider.dart: Provides the logic for changing the locale.
l10n/
app_en.arb: Localization file for English.
app_hi.arb: Localization file for Hindi.
app_ur.arb: Localization file for Urdu.
Localization
The app uses the flutter_gen package to handle localization. The .arb files in the l10n directory contain the localized strings.

To add a new language:

Create a new .arb file for the language (e.g., app_es.arb for Spanish).
Add the localized strings to the new .arb file.
Update the pubspec.yaml file to include the new .arb file.
State Management
The app uses the provider package to manage the language state. The LanguageProvider class is responsible for changing the app's locale.
