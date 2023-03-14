import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_grocer/Model/item_model.dart';
import 'package:green_grocer/Utils/consts.dart';
import 'package:green_grocer/Utils/utils_services.dart';

class GridViewHomeTile extends StatelessWidget {
  const GridViewHomeTile({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    UtilsServices utilsServices = UtilsServices();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.blue, /* COLOR WHITE */
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
    );
  }
}
