import 'package:flutter/material.dart';
import 'package:quotes_app/Screens/HomeScreen.dart';
import 'package:quotes_app/Screens/SplashScreen.dart';

void main() {
  runApp(
    QuotesApp(),
  );
}

class QuotesApp extends StatefulWidget {
  const QuotesApp({super.key});

  @override
  State<QuotesApp> createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      initialRoute: 'home',
      routes: {
        '/': (context) => SplashScreen(),
        'home': (context) => HomeScreen(),
      },
    );
  }
}
