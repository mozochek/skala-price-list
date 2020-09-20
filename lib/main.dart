import 'package:flutter/material.dart';

import 'package:skala_price_list/resources/data.dart';
import 'package:skala_price_list/screens/home_screen.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
        title: 'Выберите услугу',
        services: Data.services,
      ),
    );
  }
}
