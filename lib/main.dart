import 'package:flutter/material.dart';
import 'package:tracker/expences.dart';

ColorScheme lightColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.teal,
  brightness: Brightness.light,
);
ColorScheme darkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.teal,
  brightness: Brightness.dark,
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: darkColorScheme,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: darkColorScheme.secondaryContainer,
          foregroundColor: darkColorScheme.onSecondaryContainer,
        ),
        cardTheme: CardThemeData(
          color: darkColorScheme.surfaceContainerHigh,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        )
      ),
      theme: ThemeData().copyWith(
        colorScheme: lightColorScheme,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: lightColorScheme.secondaryContainer,
          foregroundColor: lightColorScheme.onSecondaryContainer,
        ),
        cardTheme: CardThemeData(
          color: lightColorScheme.surfaceContainerHigh,          
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        )

      ),
      debugShowCheckedModeBanner: false,
      home: const Expences(),
      themeMode: ThemeMode.system,
    ),
  );
}
