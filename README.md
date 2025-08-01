# Expense Tracker App
A beautifully simple app to track your spending and keep your budget in check.

## 🚀 What It Does
This Flutter-powered app helps you:

✍️ Log daily expenses — Add a title, amount, category, and date in a clean, minimal form.

📊 Visualize your budget — A snappy bar chart breaks down your spending by category.

🌗 Adapt to your vibe — Light or dark mode? The app matches your system theme, no questions asked.

📱 Feel smooth on any screen — Whether it's a phone, tablet, or web, the layout adjusts for a seamless experience.

🧠 Undo accidental deletes — Oops? Deleted something? Just tap undo. We got you.

🍔 See where your money goes — Food, travel, work, fun — all expenses are neatly categorized.

🧠 Behind the Scenes
No bloated packages or overkill frameworks here — just:

Stateful Widgets: Clean, simple state management.

Custom Widgets: Reusable UI components like ChartBar, ExpenseItem, and more.

Responsive Design: LayoutBuilder-based column/row switch for different screen sizes.

Platform-aware Alerts: iOS users get Cupertino dialogs, Android gets Material — like it should be.

Material 3 Theming: Full support for light/dark themes using Flutter’s ThemeData.

## 🧭 Folder Tour
bash
Copy
Edit
lib/
├── chart/                  # Custom chart with category-wise bars
│   ├── chart.dart
│   └── chart_bar.dart

├── expences.dart           # Main screen: chart + expense list + add logic

├── expences_list/          # Expense list and swipe-to-delete logic
│   ├── expences_list.dart
│   └── expencex_item.dart

├── models/                 # Expense model + category logic
│   └── expence_model.dart

├── new_expence.dart        # Modal sheet for adding new expenses

└── main.dart               # App entry point + themes + app scaffold


## ⚙️ How to Run It
bash
Copy
Edit
git clone https://github.com/your-username/flutter-expense-tracker.git
cd flutter-expense-tracker
flutter pub get
flutter run
Make sure your Flutter SDK is installed (flutter doctor to check!).

## Sneak Peak
### ☀️ Light Mode
<p float="left"> <img src="https://github.com/user-attachments/assets/da9d29f8-cb1b-4292-a3fc-97e6ae171239" width="200"/> <img src="https://github.com/user-attachments/assets/425f2bec-0233-46ac-b662-9067baa22a96" width="200"/> </p>
### 🌙 Dark Mode
<p float="left"> <img src="https://github.com/user-attachments/assets/d0b85dd8-e0c0-40e5-9e63-9427927aa269" width="200"/> <img src="https://github.com/user-attachments/assets/70e6d463-8dc1-4b71-a625-2dad656af38f" width="200"/> </p>
### 🔄 Responsive in Landscape
<p float="left"> <img src="https://github.com/user-attachments/assets/e322a8b7-7298-4646-bc41-ad1e5c2c6ba9" width="400"/> </p>





## 🎯 Tech Stack
Flutter + Dart (null safety)

Material 3 design system

Zero third-party packages (just pure Flutter magic)

Full platform-aware UI (iOS + Android)

👨‍💻 Made By
Shrey Jain
👉 GitHub: Shreyjain-1
📬 Reach out: jainshrey145@gmail.com
