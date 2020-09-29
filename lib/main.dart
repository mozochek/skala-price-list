import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Прайс лист СЦ"Скала"',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
