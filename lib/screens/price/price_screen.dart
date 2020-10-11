import 'package:flutter/material.dart';
import '../../components/widgets.dart';

class PriceScreen extends StatelessWidget {
  final String title = 'Стоимость услуги';
  final String serviceName;
  final String additionalInfo;
  final String pricePrefix;
  final int price;
  final String pricePostfix;

  const PriceScreen({
    @required this.serviceName,
    this.additionalInfo,
    this.pricePrefix: 'Стоимость:',
    @required this.price,
    @required this.pricePostfix,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.shortestSide < 600;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              // App bar
              CustomAppBar(title: title),
              // Custom divider
              Container(
                height: 1,
                color: Color.fromRGBO(17, 43, 104, 1.0),
              ),
              // Content
              Container(
                child: Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          serviceName,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.75),
                            fontSize: isMobile ? 24.0 : 36.0,
                            height: 1.1,
                            fontFamily: "RobotoMedium",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          height: 1,
                          color: Colors.black.withOpacity(0.11),
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '$pricePrefix $price $pricePostfix',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.75),
                                fontSize: isMobile ? 24.0 : 38.0,
                                height: 1.1,
                                fontFamily: "RobotoMedium",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.black.withOpacity(0.11),
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                        ),
                        additionalInfo != null
                            ? Expanded(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: SingleChildScrollView(
                                    child: Text(
                                      additionalInfo,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: isMobile ? 20.0 : 30.0,
                                        fontFamily: "RobotoMedium",
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
