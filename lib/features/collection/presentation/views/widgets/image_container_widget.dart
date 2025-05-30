import 'package:flutter/material.dart';

class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
