import 'package:flutter/material.dart';

import 'AppTheme.dart';
import 'MainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      // theme: MyAppTheme.lightTheme, // Default theme
      // darkTheme: MyAppTheme.darkTheme,
      theme: MyAppTheme.currentTheme,// Dark theme
      home: PortfolioMainPage(),
    );
  }
}

