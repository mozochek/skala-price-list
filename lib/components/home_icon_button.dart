import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';

class HomeIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
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
