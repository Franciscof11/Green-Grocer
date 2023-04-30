import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_grocer/Model/cart_item_model.dart';
import 'package:green_grocer/Utils/utils_services.dart';
import 'package:green_grocer/View/Widgets/remove_glow_effect.dart';

import '../../../Model/app_mock_data.dart' as mock_data;
import '../../../Model/app_mock_data.dart';
import '../../../Utils/consts.dart';
import '../../Widgets/cart_tile.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final UtilsServices utilsServices = UtilsServices();

  void removeItemFromCart(CartItemModel cartItem) {
    setState(() {
      mock_data.cartItems.remove(cartItem);
    });
  }

  double cartTotalPrice() {
    double total = 0;

    for (var item in mock_data.cartItems) {
      total += item.totalPrice();
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
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
                  itemCount: mock_data.cartItems.length,
                  itemBuilder: (context, index) => CartTile(
                    cartItem: mock_data.cartItems[index],
                    cartItems: cartItems,
                    remove: removeItemFromCart,
                  ),
                ),
              )),
          //
          //Confirm Modal
          //
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.19,
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
                    utilsServices.priceFormatter(cartTotalPrice()),
                    style: GoogleFonts.cairo(
                      height: 1,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: ColorsClass().backgroundGreen,
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () async {
                        // ignore: unused_local_variable
                        bool? result = await showOrderConfirmation();
                      },
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
          ),
        ],
      ),
    );
  }

  Future<bool?> showOrderConfirmation() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          title: Text('Confirmação'),
          content: Text('Deseja realmente concluir o pedido?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text('Não'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text('Sim'),
            )
          ],
        );
      },
    );
  }
}
