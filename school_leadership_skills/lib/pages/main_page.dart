import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:school_leadership_skills/pages/home_page.dart';


class MainPage extends StatefulWidget {
  /// Creates the demo page for [FadeThroughTransition].
  const MainPage({super.key});

  @override
  State<MainPage> createState() =>
      _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;

  List<Widget> pageList = <Widget>[
   const HomePage(),
   const HomePage(),
   const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (
          child,
          animation,
          secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: pageList[pageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (int newValue) {
          setState(() {
            pageIndex = newValue;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Мероприятия',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}