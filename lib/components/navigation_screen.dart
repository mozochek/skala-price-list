import 'package:flutter/material.dart';
import 'package:skala_price_list/components/widgets.dart';

class NavigationScreen extends StatefulWidget {
  final String title;
  final Map<String, Widget> cardsInfo;

  const NavigationScreen(
      {Key key, @required this.title, @required this.cardsInfo})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> textOfCards = widget.cardsInfo.keys.toList();
    final List<Widget> cardsPages = widget.cardsInfo.values.toList();

    return Scaffold(
      appBar: Widgets.getAppBar(context: context, title: widget.title),
      body: Widgets.getScreenBody(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.cardsInfo.length,
            (index) => Widgets.getCardWithText(
              context: context,
              text: textOfCards.elementAt(index),
              nextPage: cardsPages.elementAt(index),
            ),
          ),
        ),
      ),
    );
  }
}
