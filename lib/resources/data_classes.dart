import 'package:flutter/material.dart';

class Service {
  final String name;
  String description;
  final List<TypeOfService> typesOfService;
  final String pathToImg;

  Service(
      {@required this.name, @required this.typesOfService, @required this.description, @required this.pathToImg});

  Service.withoutDescription(
      {@required this.name, @required this.typesOfService, @required this.pathToImg, this.description: ''});

  @override
  String toString() {
    return 'Service{name: $name, description: $description, typesOfService: $typesOfService}';
  }
}

class TypeOfService {
  final String name;
  String description;
  final List<Price> prices;

  TypeOfService({@required this.name, @required this.prices});

  TypeOfService.withoutDescription(
      {@required this.name, @required this.prices, this.description: 'Описание отсутствует'});

  @override
  String toString() {
    return 'TypeOfService{name: $name, description: $description, prices: $prices}';
  }
}

class Price {
  final String prefix;
  final int price;
  final String postfix;

  Price({@required this.prefix, @required this.price, @required this.postfix});

  @override
  String toString() {
    return 'Price{prefix: $prefix, price: $price, postfix: $postfix}';
  }

  String toDecoratedString() {
    return '$prefix: $price $postfix';
  }
}
