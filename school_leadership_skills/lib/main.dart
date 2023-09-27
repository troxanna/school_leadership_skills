import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:school_leadership_skills/pages/home_page.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SFProText',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color.fromARGB(255, 245, 245, 250),
        ),
      ),
      home: const HomePage(),
    );
  }
}

