import 'package:flutter/material.dart';
import 'components/card_with_text.dart';
import '../../components/custom_appbar.dart';
import '../../components/custom_scroll_view.dart';

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

    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final double cardHeight = isPortrait
        ? MediaQuery.of(context).size.longestSide * 0.35
        : MediaQuery.of(context).size.shortestSide * 0.6;
    final double cardWidth = isPortrait
        ? MediaQuery.of(context).size.shortestSide * 0.8
        : MediaQuery.of(context).size.longestSide * 0.45;

    final List<Widget> cards = List.generate(
      widget.cardsInfo.length,
      (index) => CardWithText(
        cardHeight: cardHeight,
        cardWidth: cardWidth,
        nextPage: cardsPages.elementAt(index),
        cardText: textOfCards.elementAt(index),
        isPortrait: isPortrait,
      ),
    );

    return Scaffold(
      appBar: CustomAppBar(title: widget.title),
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
