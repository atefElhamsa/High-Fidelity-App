import 'package:flutter/material.dart';

class TextUnderImageSectionPartTwoModel {
  final String title;
  final String price;
  final String containerTitle;
  final String containerImage;
  final String? priceImage;
  final double? titleSize;
  final double? priceSize;
  final FontWeight? fontWeight;
  final double? paddingLeft;
  final double? containerHeight;
  final double? containerWidth;
  final void Function()? onTap;

  const TextUnderImageSectionPartTwoModel({
    required this.title,
    required this.price,
    required this.containerTitle,
    required this.containerImage,
    this.priceImage,
    this.titleSize,
    this.containerHeight,
    this.containerWidth,
    this.onTap,
    this.paddingLeft,
    this.fontWeight,
    this.priceSize,
  });
}
