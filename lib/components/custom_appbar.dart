import 'package:flutter/material.dart';
import 'back_icon_button.dart';
import 'home_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  CustomAppBar({@required this.title});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.shortestSide < 600;

    // Temporary code till Navigator.canPop won't be fixed
    final ModalRoute<dynamic> parentRoute = ModalRoute.of(context);
    bool canPop = parentRoute?.canPop ?? false;
    //

    return Container(
      height: isMobile ? 50.0 : 75.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          canPop ? BackIconButton() : SizedBox.shrink(),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'RobotoMedium',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  fontSize: isMobile ? 14.0 : 24.0,
                  color: Color.fromRGBO(17, 43, 104, 1.0),
                ),
              ),
            ),
          ),
          canPop ? HomeIconButton() : SizedBox.shrink(),
        ],
      ),
    );
  }
}
