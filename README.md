# Expense Tracker App
A beautifully simple app to track your spending and keep your budget in check.

## 🚀 What It Does
This Flutter-powered app helps you:

* **Log daily expenses** — You can easily add your daily expenses. Just give it a title, the amount, a category, and the date. Super simple!
* **Visualize your budget** — A cool bar chart gives you a quick look at where your money is going.
* **Adapt to your vibe** — Whether you like light mode or dark mode, the app automatically matches your phone's theme. No extra effort needed!
* **Feel smooth on any screen** — No matter if you're on a phone, tablet, or even the web, the app's layout will look awesome and feel natural.
* **Undo accidental deletes** — If you accidentally swipe something away, don't worry! You can just tap undo to bring it right back.
* **See where your money goes** — Your expenses are sorted into categories like Food, Travel, Work, and Fun, so it's easy to see where you're spending.

## 🧠 Behind the Scenes
The app is built using a simple and clean architecture, featuring:

* **Stateful Widgets**: A straightforward way to manage the app's data.
* **Custom Widgets**: We built our own reusable parts like `ChartBar` and `ExpencexItem` to make the UI consistent.
* **Responsive Design**: The app can tell what kind of screen you're on and changes its layout to fit perfectly.
* **Platform-aware Alerts**: The app shows iOS-style dialogs on iPhones and Android-style dialogs on Android phones. Pretty neat, right?
* **Material 3 Theming**: The app follows the new Material 3 design, which means it looks fresh and modern in both light and dark themes.

## 🧭 Folder Tour
```bash
lib/
├── chart/                # Custom chart with category-wise bars
│   ├── chart.dart
│   └── chart_bar.dart
├── expences.dart          # Main screen: chart + expense list + add logic
├── expences_list/         # Expense list and swipe-to-delete logic
│   ├── expences_list.dart
│   └── expencex_item.dart
├── models/                # Expense model + category logic
│   └── expence_model.dart
├── new_expence.dart       # Modal sheet for adding new expenses
└── main.dart              # App entry point + themes + app scaffold
```


## ⚙️ How to Run It
```
bash
Copy
Edit
git clone https://github.com/your-username/flutter-expense-tracker.git
cd flutter-expense-tracker
flutter pub get
flutter run
Make sure your Flutter SDK is installed (flutter doctor to check!).
```

## Sneak Peak
**☀️ Light Mode**
<p float="left"> <img src="https://github.com/user-attachments/assets/da9d29f8-cb1b-4292-a3fc-97e6ae171239" width="200"/> <img src="https://github.com/user-attachments/assets/425f2bec-0233-46ac-b662-9067baa22a96" width="200"/> </p>

__🌙 Dark Mode__
<p float="left"> <img src="https://github.com/user-attachments/assets/d0b85dd8-e0c0-40e5-9e63-9427927aa269" width="200"/> <img src="https://github.com/user-attachments/assets/70e6d463-8dc1-4b71-a625-2dad656af38f" width="200"/> </p>

**🔄 Responsive in Landscape**
<p float="left"> <img src="https://github.com/user-attachments/assets/e322a8b7-7298-4646-bc41-ad1e5c2c6ba9" width="400"/> </p>





## 🎯 Tech Stack
Flutter + Dart (null safety)

Material 3 design system

Zero third-party packages (just pure Flutter magic)

Full platform-aware UI (iOS + Android)

## 👨‍💻 Made By

Shrey Jain

👉 GitHub: Shreyjain-1

📬 Reach out: jainshrey145@gmail.com
