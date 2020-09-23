import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  final Widget nextPage;
  final Widget child;

  CustomCard({
    @required this.cardHeight,
    @required this.cardWidth,
    @required this.nextPage,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      height: cardHeight,
      width: cardWidth,
      child: Padding(
        padding: isPortrait
            ? EdgeInsets.symmetric(vertical: 20.0)
            : EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          child: GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => this.nextPage,
                ),
              ),
            },
            child: this.child,
          ),
        ),
      ),
    );
  }
}
