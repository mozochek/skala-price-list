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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              /*Color.fromRGBO(13, 99, 117, 46),
              Color.fromRGBO(14, 78, 128, 50),
              Color.fromRGBO(17, 43, 104, 41),
              Color.fromRGBO(14, 18, 128, 50),*/
              Color.fromRGBO(39, 101, 245, 96),
              Color.fromRGBO(29, 75, 181, 71),
              Color.fromRGBO(19, 48, 117, 46),
              Color.fromRGBO(17, 43, 105, 41),
              Color.fromRGBO(13, 33, 79, 31),
            ],
            tileMode: TileMode.repeated,
          ),
        ),
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
                    fontSize: 20.0,
                    fontFamily: "RobotoMedium",
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
