import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';

class HomeIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.shortestSide < 600;

    return IconButton(
      iconSize: isMobile ? 30.0 : 45.0,
      icon: Icon(
        Icons.home,
        color: Color.fromRGBO(17, 43, 104, 1.0),
      ),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
          (route) => false,
        );
      },
    );
  }
}
