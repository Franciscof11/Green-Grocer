import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/consts.dart';
import '../../Utils/utils_services.dart';

class ProductDetaislPage extends StatelessWidget {
  const ProductDetaislPage(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.itemDescription,
      required this.image,
      required this.unit});
  final String itemName;
  final double itemPrice;
  final String itemDescription;
  final Widget image;
  final String unit;

  @override
  Widget build(BuildContext context) {
    UtilsServices utilsServices = UtilsServices();
    return Scaffold(
      backgroundColor: ColorsClass().backgroundGrey,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          //
          //Image
          Expanded(
            child: image,
          ),
          //
          //Modal
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(42),
                    topLeft: Radius.circular(42),
                  )),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.blue,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 18),
                                Text(
                                  itemName,
                                  style: GoogleFonts.cairo(
                                    height: 1.2,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      utilsServices.priceFormatter(itemPrice),
                                      style: GoogleFonts.cairo(
                                        height: 1,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: ColorsClass().backgroundGreen,
                                      ),
                                    ),
                                    Text(
                                      '/$unit',
                                      style: GoogleFonts.cairo(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 150),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text('CONTADOR AQUI'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      itemDescription,
                      style: GoogleFonts.cairo(
                        height: 1.25,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 90),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            elevation: 0,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Adicionar ao carrinho',
                              style: GoogleFonts.cairo(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ))
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
