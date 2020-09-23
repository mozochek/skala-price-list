import 'package:flutter/material.dart';

class CustomSingleChildScrollView extends StatelessWidget {
  final Widget child;

  CustomSingleChildScrollView({@required this.child});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
          child: this.child,
        ),
      ),
    );
  }
}
