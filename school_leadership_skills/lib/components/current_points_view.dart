import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';



class CurrentPointsWidget extends StatefulWidget {
  const CurrentPointsWidget({super.key});

  @override
  _CurrentPointsWidgetState createState() => _CurrentPointsWidgetState();
}

class _CurrentPointsWidgetState extends State<CurrentPointsWidget> {
  late int _currentPoints;

  @override
  void initState() {
    // TODO: implement initState
    _currentPoints = 110;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Баллы:',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 133, 133, 151),
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '$_currentPoints',
          style: const TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 28, 8, 42),
            fontWeight: FontWeight.w600,
          ),
        ).animate().shake(
                    delay: Duration(seconds: 2),
                  ),
        const SizedBox(
          width: 6,
        ),
        SizedBox(
          width: 20,
          height: 20,
          child: SvgPicture.asset('assets/icons/points.svg'),
        ),
      ],
    );
  }
}