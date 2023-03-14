import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_grocer/Model/item_model.dart';
import 'package:green_grocer/Utils/consts.dart';
import 'package:green_grocer/Utils/utils_services.dart';
import 'package:green_grocer/View/Pages/product_details_page.dart';

class GridViewHomeTile extends StatelessWidget {
  const GridViewHomeTile({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    UtilsServices utilsServices = UtilsServices();
    return Stack(
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetaislPage(
                    itemName: itemModel.name,
                    itemDescription: itemModel.description,
                    itemPrice: itemModel.price,
                    image: itemModel.imageAsset,
                    unit: itemModel.unit,
                  ))),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: itemModel.imageAsset,
                  ),
                  Text(
                    itemModel.name,
                    style: GoogleFonts.cairo(
                      height: 1.2,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        utilsServices.priceFormatter(itemModel.price),
                        style: GoogleFonts.cairo(
                          height: 1,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: ColorsClass().backgroundGreen,
                        ),
                      ),
                      Text(
                        '/${itemModel.unit}',
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
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(10),
                ),
                color: ColorsClass().backgroundGreen,
              ),
              width: 35,
              height: 35,
              child: Icon(Icons.add_shopping_cart_rounded, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
