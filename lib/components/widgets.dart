import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:skala_price_list/screens/home/home_screen.dart';

class Widgets {
  static Widget getAppBar({
    @required BuildContext context,
    @required String title,
  }) {
    final bool isMobileLayout =
        MediaQuery.of(context).size.shortestSide < 600.0;
    List<Widget> actions = [];

    if (Navigator.canPop(context)) {
      actions.add(
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
                (route) => false);
          },
        ),
      );
    }
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: isMobileLayout ? 16.0 : 20.0,
        ),
      ),
      actions: actions,
      centerTitle: true,
      backgroundColor: Colors.cyan,
      shadowColor: Colors.black,
    );
  }

  static Widget getScreenBody(Widget widget) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: widget,
        ),
      ),
    );
  }

  static Widget getCardWithImage({
    @required BuildContext context,
    @required String imagePath,
    @required Widget nextPage,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => nextPage,
                ),
              ),
            },
            child: Container(
              height: 250,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget getCardWithText({
    @required BuildContext context,
    @required String text,
    @required Widget nextPage,
  }) {
    final double height = 250.0;
    final double width = 250.0;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => nextPage,
                ),
              ),
            },
            child: Container(
              height: height,
              width: width,
              alignment: Alignment.center,
              color: Color.fromRGBO(17, 43, 104, 1.0),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: height,
                        maxWidth: width,
                      ),
                      child: Text(
                        text.toUpperCase(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
