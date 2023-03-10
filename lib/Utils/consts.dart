import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ColorsClass {
  Color backgroundGreen = Color.fromRGBO(140, 195, 74, 1);
  Color redFontTitleApp = Color.fromRGBO(157, 61, 25, 1);
  Color backgroundGrey = Color.fromRGBO(243, 241, 242, 1);
}

class Masks {
  final cpfMask = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
  );
  final phoneMask = MaskTextInputFormatter(
    mask: '(##) #####-####',
    filter: {"#": RegExp(r'[0-9]')},
  );
}
