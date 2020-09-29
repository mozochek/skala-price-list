import 'package:flutter/material.dart';
import 'package:skala_price_list/components/back_icon_button.dart';
import 'home_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  CustomAppBar({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Navigator.canPop(context) ? BackIconButton() : SizedBox.shrink(),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'RobotoMedium',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  color: Color.fromRGBO(17, 43, 104, 1.0),
                ),
              ),
            ),
          ),
          Navigator.canPop(context) ? HomeIconButton() : SizedBox.shrink(),
        ],
      ),
    );
  }
}
