import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../features/onboarding/data/models/text_model.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.textModel});

  final TextModel textModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      textModel.title,
      textAlign: textModel.textAlign ?? TextAlign.center,
      style: GoogleFonts.spaceGrotesk(
        fontWeight: textModel.fontWeight,
        fontSize: textModel.fontSize,
        color: textModel.textColor,
      ),
    );
  }
}
