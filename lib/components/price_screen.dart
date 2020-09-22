import 'package:flutter/material.dart';
import 'package:skala_price_list/components/widgets.dart';

class PriceScreen extends StatelessWidget {
  final String price;

  PriceScreen({@required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Widgets.getAppBar(context: context, title: 'Стоимость'),
      body: SafeArea(
        child: Center(
          child: Text(
            price,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
