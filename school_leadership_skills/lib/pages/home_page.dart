import 'package:flutter/material.dart';
import 'package:school_leadership_skills/components/achievements_list_view.dart';
import 'package:school_leadership_skills/components/current_points_view.dart';
import 'package:school_leadership_skills/components/current_progress_view.dart';
import 'package:animations/animations.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 250),
      appBar: AppBar(
        title: const Text(
          'Уровень',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 245, 245, 250),
        centerTitle: true,
        actions: const [
          IconButton(
            icon: Icon(Icons.notifications),
            iconSize: 36,
            onPressed: null,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/avatar.png'),
              ).animate().fade().slide(
                    duration: Duration(seconds: 1),
                  ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Анастасия',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const CurrentPointsWidget(),
              const SizedBox(
                height: 20,
              ),
              const CurrentProgressWidget(),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                child: AchievementsWidget(),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
