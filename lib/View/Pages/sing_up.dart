import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_grocer/View/Widgets/remove_glow_effect.dart';

import '../../../Utils/consts.dart';
import '../Widgets/custom_text_input.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass().backgroundGreen,
      body: Column(
        children: [
          //
          //AppBar
          SafeArea(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 24),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                )
              ],
            ),
          ),
          //
          //Title App
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  //
                  //Header
                  Text(
                    'Cadastro',
                    style: GoogleFonts.cairo(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
            ),
          ),

          //
          // Form
          Expanded(
            flex: 2,
            child: RemoveGlowEffect(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.606,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 30,
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
                      Padding(
                          padding: EdgeInsets.only(bottom: 22),
                          child: CustomTextField(
                            label: 'Nome',
                            prefixIcon: Icon(Icons.person_outlined),
                          )),
                      Padding(
                          padding: EdgeInsets.only(bottom: 22),
                          child: CustomTextField(
                            label: 'Celular',
                            mask: [Masks().phoneMask],
                            prefixIcon: Icon(Icons.phone_outlined),
                          )),
                      Padding(
                          padding: EdgeInsets.only(bottom: 22),
                          child: CustomTextField(
                            label: 'CPF',
                            mask: [Masks().cpfMask],
                            prefixIcon: Icon(Icons.contact_page_outlined),
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
                              'Cadastrar Usuário',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
