import 'package:flutter/material.dart';

class PriceAndIconModel {
  final String? priceImage;
  final String? price;
  final double? paddingLeft;
  final FontWeight? fontWeight;
  final double? priceSize;

  const PriceAndIconModel({
    this.priceImage,
    this.price,
    this.paddingLeft,
    this.fontWeight,
    this.priceSize,
  });
}
