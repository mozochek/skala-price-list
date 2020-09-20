import 'package:flutter/material.dart';

import 'package:skala_price_list/resources/data_classes.dart';
import 'package:skala_price_list/resources/widgets.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  final List<Service> services;

  HomeScreen({@required this.title, @required this.services});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool isMobileLayout = shortestSide < 600.0;
    final Orientation currentOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: isMobileLayout ? 24.0 : 32.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        shadowColor: Colors.black,
      ),
      body: SafeArea(
        child: isMobileLayout
            ? displayServices(
                currentOrientation: currentOrientation,
                portraitAxisCount: 2,
                landscapeAxisCount: 3)
            : displayServices(
                currentOrientation: currentOrientation,
                portraitAxisCount: 3,
                landscapeAxisCount: 4),
      ),
    );
  }

  Widget displayServices({
    @required Orientation currentOrientation,
    @required int portraitAxisCount,
    @required int landscapeAxisCount,
  }) {
    return Builder(
      builder: (BuildContext context) {
        return GridView.count(
          crossAxisCount: currentOrientation == Orientation.portrait
              ? portraitAxisCount
              : landscapeAxisCount,
          children: List.generate(
            widget.services.length,
            (index) {
              return ServiceCard(
                services: widget.services,
                index: index,
              );
            },
          ),
        );
      },
    );
  }
}
