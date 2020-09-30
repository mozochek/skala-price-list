import 'package:flutter/material.dart';

class BackIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.shortestSide < 600;

    return IconButton(
      iconSize: isMobile ? 30.0 : 45.0,
      icon: Icon(
        Icons.arrow_back,
        color: Color.fromRGBO(17, 43, 104, 1.0),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
