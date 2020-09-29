import 'package:flutter/material.dart';

class BackIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
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
