
import 'package:flutter/material.dart';
import 'package:flutter_application_1/final_module/language_logic.dart';
import 'package:flutter_application_1/final_module/theme_logic.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/final_module/first_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageLogic()),
        ChangeNotifierProvider(create: (_) => ThemeLogic()),
        //ChangeNotifierProvider(create: (_) => CounterLogic()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeLogic>(
      builder: (context, themeLogic, child) {
        return MaterialApp(
          theme: themeLogic.currentTheme,  // Apply the current theme
          home: const FirstScreen(),             // Set FirstScreen as the home
        );
      },
    );
  }
}

