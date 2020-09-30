import 'package:flutter/material.dart';
import 'components/card_with_text.dart';
import '../../components/widgets.dart';

class NavigationScreen extends StatelessWidget {
  final String title;
  final Map<String, Widget> cardsInfo;

  NavigationScreen({@required this.title, @required this.cardsInfo});

  @override
  Widget build(BuildContext context) {
    final List<String> textOfCards = cardsInfo.keys.toList();
    final List<Widget> cardsPages = cardsInfo.values.toList();

    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    double cardHeight;
    double cardWidth;

    if (MediaQuery.of(context).size.shortestSide < 600) {
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

    final List<Widget> cards = List.generate(
      cardsInfo.length,
      (index) => CardWithText(
        cardHeight: cardHeight,
        cardWidth: cardWidth,
        nextPage: cardsPages.elementAt(index),
        cardText: textOfCards.elementAt(index),
        isPortrait: isPortrait,
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CustomAppBar(title: title),
            Container(
              height: 1,
              color: Color.fromRGBO(17, 43, 104, 1.0),
            ),
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.center,
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
