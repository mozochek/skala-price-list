import 'package:flutter/material.dart';
import '../../../components/custom_card.dart';

class CardWithText extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  final Widget nextPage;
  final String cardText;
  final bool isPortrait;

  CardWithText({
    @required this.cardHeight,
    @required this.cardWidth,
    @required this.nextPage,
    @required this.cardText,
    @required this.isPortrait,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardHeight: this.cardHeight,
      cardWidth: this.cardWidth,
      nextPage: this.nextPage,
      child: Container(
        color: Color.fromRGBO(17, 43, 104, 1.0),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                height: this.isPortrait
                    ? this.cardHeight - 80.0
                    : this.cardHeight - 40.0,
                width: this.isPortrait
                    ? this.cardWidth - 40.0
                    : this.cardWidth - 80.0,
                alignment: Alignment.bottomRight,
                child: Text(
                  this.cardText.toUpperCase(),
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
    );
  }
}
