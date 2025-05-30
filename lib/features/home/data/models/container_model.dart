import 'package:flutter/material.dart';

class ContainerModel {
  final String title;
  bool isActive;
  Color? containerColor;
  Color? textColor;

  ContainerModel({
    required this.title,
    this.isActive = false,
    this.containerColor,
    this.textColor,
  });
}
