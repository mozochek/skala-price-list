import 'package:flutter/material.dart';
import 'package:skala_price_list/components/page_routes.dart';

import 'package:skala_price_list/components/widgets.dart';

class HomeScreen extends StatefulWidget {
  final String _title = 'Выберите услугу';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    PageRoutes routes = PageRoutes();
    final List assetsPaths = routes.initialRoutes.keys.toList();
    List screens = routes.initialRoutes.values.toList();
    final List<Widget> cards = List.generate(
      routes.initialRoutes.length,
      (index) => Widgets.getCardWithImage(
        context: context,
        imagePath: assetsPaths.elementAt(index),
        nextPage: screens.elementAt(index),
      ),
    );

    final List cardsText = routes.initialRoutesWithText.keys.toList();
    screens = routes.initialRoutesWithText.values.toList();
    final List<Widget> cardsWithoutImage = List.generate(
      routes.initialRoutesWithText.length,
      (index) => Widgets.getCardWithText(
        context: context,
        text: cardsText.elementAt(index),
        nextPage: screens.elementAt(index),
      ),
    );
    cards.addAll(cardsWithoutImage);

    return Scaffold(
      appBar: Widgets.getAppBar(title: widget._title, context: context),
      body: Widgets.getScreenBody(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: cards,
        ),
      ),
    );
  }
}
