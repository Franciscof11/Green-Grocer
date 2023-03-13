import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/consts.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile(
      {super.key,
      required this.label,
      required this.isSelected,
      required this.onPressed});
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100,
        height: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected == true ? Colors.green : Colors.white,
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.cairo(
              color: isSelected ? Colors.white : ColorsClass().redFontTitleApp,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
