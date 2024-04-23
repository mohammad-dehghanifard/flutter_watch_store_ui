import 'package:flutter/material.dart';

class ProductModel {
  ProductModel({required this.title,required this.strap, this.price,required this.color,required this.image});
  String? title,strap,image;
  Color? color;
  double? price;
}