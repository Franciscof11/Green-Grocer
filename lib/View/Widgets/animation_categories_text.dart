import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class _AnimationCategoriesTextState extends State<AnimationCategoriesText> {
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        FadeAnimatedText(
          'Verduras',
          textStyle: GoogleFonts.cairo(
            fontSize: 35,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        FadeAnimatedText(
          'Frutas',
          textStyle: GoogleFonts.cairo(
            fontSize: 35,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        FadeAnimatedText(
          'Legumes',
          textStyle: GoogleFonts.cairo(
            fontSize: 35,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
      repeatForever: true,
      pause: Duration(milliseconds: 40),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}

class AnimationCategoriesText extends StatefulWidget {
  const AnimationCategoriesText({super.key});

  @override
  State<AnimationCategoriesText> createState() =>
      _AnimationCategoriesTextState();
}
