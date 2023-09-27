import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';

// ignore: must_be_immutable
class AchievementsWidget extends StatefulWidget {
  const AchievementsWidget({super.key});

  @override
  State<AchievementsWidget> createState() => _AchievementsWidgetState();
}

class _AchievementsWidgetState extends State<AchievementsWidget> {
  late int _currentCountAchievements;
  late int _totalCountAchievements;
  final List<String> _achievementIcons = [
    'assets/icons/rewards/reward_first.svg',
    'assets/icons/rewards/reward_second.svg',
    'assets/icons/rewards/reward_third.svg',
    'assets/icons/rewards/reward_fourth.svg'
  ];

  @override
  void initState() {
    // TODO: implement initState
    _currentCountAchievements = 1;
    _totalCountAchievements = 19;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            const Text(
              'Достижения',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: null,
              child: Row(
                children: [
                  Text(
                    'Получено $_currentCountAchievements/$_totalCountAchievements',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 188, 188, 204),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                    color: Colors.black,
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            itemCount: _achievementIcons.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 80,
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: SvgPicture.asset(
                        _achievementIcons[index],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

