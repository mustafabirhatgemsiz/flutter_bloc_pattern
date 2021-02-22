import 'dart:async';

import 'package:bloc_pattern_app/data/cart_service.dart';
import 'package:bloc_pattern_app/data/product_service.dart';
import 'package:bloc_pattern_app/models/cart.dart';
import 'package:bloc_pattern_app/models/product.dart';

class ProductBloc{
  final productStreamController = StreamController.broadcast();

  Stream get getStream => productStreamController.stream;

  List<Product> getAll(){
    return ProductService.getAll();
  }
}
final productBloc = ProductBloc();