import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/consts.dart';

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Green',
                            style: GoogleFonts.cairo(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'grocer',
                            style: GoogleFonts.cairo(
                              fontSize: 50,
                              color: ColorsClass().secondRedFont,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
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
          Expanded(
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
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        floatingLabelStyle: TextStyle(fontSize: 20),
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      obscureText: true,
                      decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(fontSize: 20),
                        labelText: 'Senha',
                        prefixIcon: Icon(Icons.lock_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
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
        ],
      ),
    );
  }
}
