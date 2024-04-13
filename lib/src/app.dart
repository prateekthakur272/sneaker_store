import 'package:flutter/material.dart';
import 'package:sneaker_store/src/constants/theme.dart';
import 'package:sneaker_store/src/screens/intro_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Nike Store',
      home: const IntroScreen(),
    );
  }
}
