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
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
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
                      padding: EdgeInsets.only(bottom: 22),
                      child: CustomTextField(
                        label: 'Email',
                        prefixIcon: Icon(Icons.email_outlined),
                      )),
                  Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: CustomTextField(
                        label: 'Senha',
                        isSecret: true,
                        prefixIcon: Icon(Icons.lock_outline),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                        onPressed: () {},
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 168, 57, 49),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[400],
                          thickness: 1.3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'Ou',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[400],
                          thickness: 1.3,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 1.8,
                                color: Colors.green,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              )),
                          onPressed: () {},
                          child: Text('Criar conta',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
