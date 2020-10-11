import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';
import 'package:screen/screen.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  // Prevent screen from going into sleep mode:
    Screen.keepOn(true);
    return MaterialApp(
      title: 'Прайс лист СЦ"Скала"',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
