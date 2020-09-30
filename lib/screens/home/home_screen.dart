import 'package:flutter/material.dart';
import 'components/card_with_image.dart';
import '../../components/widgets.dart';
import '../../components/page_routes.dart';

class HomeScreen extends StatelessWidget {
  final String title = 'Выберите услугу';

  @override
  Widget build(BuildContext context) {
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final bool isMobile = MediaQuery.of(context).size.shortestSide < 600;
    double cardHeight;
    double cardWidth;

    if (isMobile) {
      cardHeight = isPortrait
          ? MediaQuery.of(context).size.longestSide * 0.35
          : MediaQuery.of(context).size.shortestSide * 0.6;
      cardWidth = isPortrait
          ? MediaQuery.of(context).size.shortestSide * 0.8
          : MediaQuery.of(context).size.longestSide * 0.45;
    } else {
      cardHeight = isPortrait
          ? MediaQuery.of(context).size.longestSide * 0.4
          : MediaQuery.of(context).size.shortestSide * 0.6;
      cardWidth = isPortrait
          ? MediaQuery.of(context).size.shortestSide * 0.8
          : MediaQuery.of(context).size.longestSide * 0.6;
    }

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
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: title),
            Container(
              height: 1,
              color: Color.fromRGBO(17, 43, 104, 1.0),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: isPortrait
                    ? SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: cards,
                        ),
                      )
                    : SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: cards,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
