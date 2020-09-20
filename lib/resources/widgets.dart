import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:skala_price_list/screens/service_details_screen.dart';
import 'package:skala_price_list/resources/data_classes.dart';

// Home screen widgets down below
class ServiceCard extends StatefulWidget {
  final List<Service> services;
  final int index;

  ServiceCard({@required this.services, @required this.index});

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    final bool isMobileLayout =
        MediaQuery.of(context).size.shortestSide < 600.0;

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.shortestSide * 0.5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.shortestSide * 0.5),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ServiceDetailsScreen(
                    service: widget.services[widget.index]),
              ),
            );
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.services[widget.index].pathToImg),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Text(
                widget.services[widget.index].name,
                style: TextStyle(
                  fontSize: isMobileLayout ? 20 : 30,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Service details screen widgets down below
class TypeOfServiceCard extends StatefulWidget {
  final TypeOfService typeOfService;

  final double cardWidth;
  final double cardHeight;
  final double cardPadding = 10.0;

  TypeOfServiceCard(
      {@required this.typeOfService,
      @required this.cardWidth,
      @required this.cardHeight});

  @override
  _TypeOfServiceCardState createState() => _TypeOfServiceCardState();
}

class _TypeOfServiceCardState extends State<TypeOfServiceCard> {
  @override
  Widget build(BuildContext context) {
    final bool isMobileLayout =
        MediaQuery.of(context).size.shortestSide < 600.0;
    final Orientation currentOrientation = MediaQuery.of(context).orientation;

    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.shortestSide * 0.05),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.shortestSide * 0.05),
        child: SizedBox(
          width: currentOrientation == Orientation.portrait
              ? widget.cardWidth
              : MediaQuery.of(context).size.longestSide * 0.4,
          height: currentOrientation == Orientation.portrait
              ? widget.cardHeight
              : MediaQuery.of(context).size.shortestSide * 0.7,
          child: Container(
            color: Colors.cyanAccent,
            padding: EdgeInsets.all(widget.cardPadding),
            child: Container(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      widget.typeOfService.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: isMobileLayout ? 18.0 : 20.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        widget.typeOfService.prices.length,
                        (index) {
                          return Center(
                            child: Text(
                              widget.typeOfService.prices[index]
                                  .toDecoratedString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: isMobileLayout ? 18.0 : 20.0,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
