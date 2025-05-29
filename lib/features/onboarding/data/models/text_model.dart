import 'package:flutter/material.dart';

class TextModel {
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? textAlign;

  const TextModel({
    required this.title,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.textAlign,
  });
}
