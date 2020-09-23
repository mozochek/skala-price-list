import 'package:flutter/material.dart';
import 'home_icon_button.dart';

class CustomAppBar extends PreferredSize {
  final String title;
  final List<Widget> actions = [];

  CustomAppBar({@required this.title});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    final bool isMobileLayout =
        MediaQuery.of(context).size.shortestSide < 600.0;

    if (Navigator.canPop(context)) {
      actions.add(
        HomeIconButton(),
      );
    }
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: isMobileLayout ? 18.0 : 22.0,
        ),
      ),
      actions: actions,
      centerTitle: true,
      backgroundColor: Colors.cyan,
      shadowColor: Colors.black,
    );
  }
}
