import 'package:flutter/material.dart';
import '../../../components/custom_card.dart';

class CardWithImage extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  final Widget nextPage;
  final String imagePath;

  CardWithImage({
    @required this.cardHeight,
    @required this.cardWidth,
    @required this.nextPage,
    @required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardWidth: this.cardWidth,
      cardHeight: this.cardHeight,
      nextPage: this.nextPage,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              this.imagePath,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
