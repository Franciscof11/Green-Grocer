import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/consts.dart';
import '../../Widgets/custom_text_input.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass().backgroundGreen,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/Images/wallpaper.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Green',
                              style: GoogleFonts.cairo(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                              children: [
                            TextSpan(
                                text: 'grocer',
                                style: GoogleFonts.cairo(
                                  fontSize: 50,
                                  color: ColorsClass().secondRedFont,
                                  fontWeight: FontWeight.w800,
                                ))
                          ])),
                      Text(
                        'Produtos',
                        style: GoogleFonts.cairo(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 22),
                        child: CustomTextField(
                          label: 'Email',
                          prefixIcon: Icon(Icons.email_outlined),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: CustomTextField(
                          label: 'Senha',
                          prefixIcon: Icon(Icons.lock_outline),
                          obscureText: true,
                        )),
                    GestureDetector(
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        color: Colors.green,
                        child: Center(
                          child: Text('Entrar'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
