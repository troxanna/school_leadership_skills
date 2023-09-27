import 'package:flutter/material.dart';

class AchievementsListPage extends StatelessWidget {
  const AchievementsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe7eefb),
      body: SafeArea(
          child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 32.5,
              vertical: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Мои достижения',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0E0E2D),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16.53,
          ),
          SizedBox(
            height: 16.53,
          ),
        ],
      )),
    );
  }
}
