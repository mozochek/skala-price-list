import 'package:flutter/material.dart';

import 'package:skala_price_list/resources/data_classes.dart';
import 'package:skala_price_list/resources/widgets.dart';

class ServiceDetailsScreen extends StatelessWidget {
  final Service service;

  ServiceDetailsScreen({@required this.service});

  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool isMobileLayout = shortestSide < 600.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          service.name,
          style: TextStyle(
            fontSize: isMobileLayout ? 24.0 : 32.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        shadowColor: Colors.black,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                service.typesOfService.length,
                (index) {
                  return Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.shortestSide * 0.05),
                    child: TypeOfServiceCard(
                      typeOfService: service.typesOfService[index],
                      cardHeight: MediaQuery.of(context).size.longestSide * 0.6,
                      cardWidth: MediaQuery.of(context).size.shortestSide * 0.5,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*
return Scaffold(
      appBar: AppBar(
        title: Text(
          service.name,
          style: TextStyle(
            fontSize: isMobileLayout ? 24.0 : 32.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        shadowColor: Colors.teal[900],
      ),
      body: SafeArea(
//        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      service.typesOfService.length,
                      (index) {
                        return Center(
                          child: TypeOfServiceCard(
                            typeOfService: service.typesOfService[index], cardHeight:
                                MediaQuery.of(context).size.longestSide * 0.6,
                            cardWidth:
                                MediaQuery.of(context).size.shortestSide * 0.5,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
//      ),
    );
 */
