import 'package:flutter/material.dart';

class ContainerModel {
  final String title;
  final Color? containerColor;
  final Color? textColor;
  final Icon? icon;
  final double? containerWidth;
  final double? containerPaddingAndWidth;
  final MainAxisAlignment? mainAxisAlignment;
  bool isActive;

  ContainerModel({
    required this.title,
    this.isActive = false,
    this.containerColor,
    this.textColor,
    this.icon,
    this.containerWidth,
    this.containerPaddingAndWidth,
    this.mainAxisAlignment,
  });
}
