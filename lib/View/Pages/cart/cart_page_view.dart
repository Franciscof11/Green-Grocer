import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_grocer/Utils/utils_services.dart';
import 'package:green_grocer/View/Widgets/remove_glow_effect.dart';

import '../../../Model/app_mock_data.dart' as mock_data;
import '../../../Utils/consts.dart';
import '../../Widgets/cart_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    UtilsServices utilsServices = UtilsServices();
    return Scaffold(
      backgroundColor: ColorsClass().backgroundGrey,
      appBar: AppBar(
        title: Text('Carrinho'),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: RemoveGlowEffect(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) =>
                      CartTile(item: mock_data.items[index]),
                ),
              )),
          //
          //Confirm Modal
          //
          Expanded(
              child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Total Geral',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 6),
                  Text(
                    utilsServices.priceFormatter(45.50),
                    style: GoogleFonts.cairo(
                      height: 1,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: ColorsClass().backgroundGreen,
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsClass().backgroundGreen,
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                      ),
                      child: Text(
                        'Concluir Pedido',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
