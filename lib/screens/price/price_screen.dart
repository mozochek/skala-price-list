import 'package:flutter/material.dart';
import '../../components/custom_appbar.dart';

class PriceScreen extends StatelessWidget {
  final String title = 'Стоимость';
  final String price;

  PriceScreen({@required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
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
