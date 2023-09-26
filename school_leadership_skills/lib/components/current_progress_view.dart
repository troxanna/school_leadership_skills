import 'package:flutter/material.dart';

class CurrentProgressWidget extends StatefulWidget {
  const CurrentProgressWidget({super.key});

  @override
  _CurrentProgressWidgetState createState() => _CurrentProgressWidgetState();
}

class _CurrentProgressWidgetState extends State<CurrentProgressWidget> {
  late double _currentProgress;
  late String _currentLevelTitle;
  final double _height = 100;

  @override
  void initState() {
    // TODO: implement initState
    _currentProgress = 80;
    _currentLevelTitle = 'Маг';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        height: _height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 66, 81, 211),
                    shape: BoxShape.circle,
                  ),
                  width: 54,
                  height: 54,
                ),
                Text(
                  '${_currentProgress.round()}%',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ваш уровень: $_currentLevelTitle',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                      value: _currentProgress / 100,
                      borderRadius: BorderRadius.circular(2),
                      backgroundColor: const Color.fromARGB(255, 37, 36, 93),
                      color: const Color.fromARGB(255, 253, 137, 174),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 32,
              height: 32,
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color.fromARGB(255, 174, 182, 194),
                  size: 32,
                ),
              ),
            )
          ],
        ));
  }
}
