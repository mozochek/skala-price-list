import 'package:flutter/material.dart';
import '../../components/custom_appbar.dart';

class PriceScreen extends StatelessWidget {
  final String title = 'Стоимость услуги';
  final String serviceName;
  final String additionalInfo;
  final String pricePrefix;
  final int price;
  final String pricePostfix;

  const PriceScreen({
    @required this.serviceName,
    this.additionalInfo: '<Доп.информация отсутствует>',
    this.pricePrefix: 'Стоимость:',
    @required this.price,
    @required this.pricePostfix,
  });

  @override
  Widget build(BuildContext context) {
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
//                color: Colors.black.withOpacity(0.11),
                color: Color.fromRGBO(17, 43, 104, 1.0),
              ),
              // Content
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        serviceName,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.75),
//                              .withOpacity(0.87 * 0.68),
                          fontSize: 24.0,
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
                            additionalInfo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.6),
//                                  .withOpacity(0.87 * 0.68),
                              fontSize: 20.0,
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
                      Text(
                        '$pricePrefix $price $pricePostfix',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.75),
//                              .withOpacity(0.87 * 0.68),
                          fontSize: 24.0,
                          height: 1.1,
                          fontFamily: "RobotoMedium",
                        ),
                      ),
                    ],
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
