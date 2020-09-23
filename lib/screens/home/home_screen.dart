import 'package:flutter/material.dart';
import 'components/card_with_image.dart';
import '../../components/custom_appbar.dart';
import '../../components/custom_scroll_view.dart';
import '../../components/page_routes.dart';

class HomeScreen extends StatefulWidget {
  final String _title = 'Выберите услугу';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final double cardHeight = isPortrait
        ? MediaQuery.of(context).size.longestSide * 0.35
        : MediaQuery.of(context).size.shortestSide * 0.6;
    final double cardWidth = isPortrait
        ? MediaQuery.of(context).size.shortestSide * 0.8
        : MediaQuery.of(context).size.longestSide * 0.45;

    PageRoutes routes = PageRoutes();
    final List assetsPaths = routes.initialRoutes.keys.toList();
    List screens = routes.initialRoutes.values.toList();

    final List<Widget> cards = List.generate(
      routes.initialRoutes.length,
      (index) => CardWithImage(
        cardHeight: cardHeight,
        cardWidth: cardWidth,
        nextPage: screens.elementAt(index),
        imagePath: assetsPaths.elementAt(index),
      ),
    );

    return Scaffold(
      appBar: CustomAppBar(title: widget._title),
      body: CustomSingleChildScrollView(
        child: isPortrait
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: cards,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: cards,
              ),
      ),
    );
  }
}
