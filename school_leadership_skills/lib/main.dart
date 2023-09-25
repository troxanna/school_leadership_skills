import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 245, 250),
        appBar: AppBar(
          title: Text(
            "Уровень",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 245, 245, 250),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              iconSize: 36,
              onPressed: null,
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 40),
          alignment: Alignment.center,
          child: Column(children: [
            SizedBox(
              child: Image.asset("assets/images/avatar.png"),
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Анастасия",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CurrentPointsWidget(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: CurrentProgressWidget(),
            )
          ]),
        ),
      ),
    );
  }
}

class CurrentPointsWidget extends StatefulWidget {
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
        Text(
          "Баллы:",
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 133, 133, 151),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "${_currentPoints}",
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 28, 8, 42),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 6,
        ),
        SizedBox(
          child: SvgPicture.asset("assets/icons/points.svg"),
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}

class CurrentProgressWidget extends StatefulWidget {
  @override
  _CurrentProgressWidgetState createState() => _CurrentProgressWidgetState();
}

class _CurrentProgressWidgetState extends State<CurrentProgressWidget> {
  late double _currentProgress;
  late String _currentLevelTitle;

  @override
  void initState() {
    // TODO: implement initState
    _currentProgress = 80;
    _currentLevelTitle = "Маг";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 66, 81, 211),
                    shape: BoxShape.circle,
                  ),
                  width: 54,
                  height: 54,
                ),
                Text(
                  "${_currentProgress.round()}%",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ваш уровень: ${_currentLevelTitle}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  LinearProgressIndicator(
                    value: _currentProgress,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: const Color.fromARGB(255, 174, 182, 194),
              ),
              iconSize: 32,
            )
          ],
        ));
  }
}
