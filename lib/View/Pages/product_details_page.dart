import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_grocer/View/Widgets/remove_glow_effect.dart';

import '../../Model/item_model.dart';
import '../../Utils/consts.dart';
import '../../Utils/utils_services.dart';
import '../Widgets/amount_widget.dart';

class ProductDetaislPage extends StatelessWidget {
  const ProductDetaislPage({
    super.key,
    required this.item,
  });
  final ItemModel item;

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
            child: Hero(
              tag: item.imageAsset,
              child: item.imageAsset,
            ),
          ),
          //
          //Modal
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.grey)],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(42),
                    topLeft: Radius.circular(42),
                  )),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    //
                    //Header
                    SizedBox(height: 40),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                item.name,
                                style: GoogleFonts.cairo(
                                  height: 1.4,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            AmountWidget(unit: item.unit),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              utilsServices.priceFormatter(item.price),
                              style: GoogleFonts.cairo(
                                height: 1,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: ColorsClass().backgroundGreen,
                              ),
                            ),
                            Text(
                              '/${item.unit}',
                              style: GoogleFonts.cairo(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    //
                    //Description
                    Expanded(
                      flex: 5,
                      child: RemoveGlowEffect(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                item.description,
                                style: GoogleFonts.cairo(
                                  height: 1.25,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    //
                    //Button
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
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
                          )),
                    ),
                    SizedBox(height: 30),
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
