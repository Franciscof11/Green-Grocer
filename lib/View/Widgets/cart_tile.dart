import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_grocer/Model/cart_item_model.dart';
import 'package:green_grocer/Utils/utils_services.dart';

import '../../Utils/consts.dart';
import 'amount_widget.dart';

class CartTile extends StatefulWidget {
  const CartTile({super.key, required this.cartItem, required this.cartItems});
  final CartItemModel cartItem;
  final List<CartItemModel> cartItems;

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    UtilsServices utilsServices = UtilsServices();

    return widget.cartItem.quantity >= 1
        ? SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: ListTile(
                //
                //Image Item
                leading: SizedBox(
                  child: Image.asset(
                    widget.cartItem.item.imageUrl,
                    width: 60,
                    height: 60,
                  ),
                ),
                //
                //Title Item
                title: Text(
                  widget.cartItem.item.name,
                  style: GoogleFonts.cairo(
                    height: 1,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                //
                //Total
                subtitle: Text(
                  utilsServices.priceFormatter(widget.cartItem.totalPrice()),
                  style: GoogleFonts.cairo(
                    height: 1,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: ColorsClass().backgroundGreen,
                  ),
                ),
                //
                //Quantity Item
                trailing: QuantityWidget(
                  isRemovable: widget.cartItem.quantity == 1 ? true : false,
                  value: widget.cartItem.quantity,
                  result: (quantity) {
                    setState(() {
                      widget.cartItem.quantity = quantity;
                    });
                  },
                  suffixText: widget.cartItem.item.unit,
                ),
              ),
            ),
          )
        : Container();
  }
}

/* class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    UtilsServices utilsServices = UtilsServices();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            SizedBox(
              width: 90,
              child: widget.infoItem.image,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  widget.infoItem.name,
                  style: GoogleFonts.cairo(
                    height: 1.7,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  utilsServices.priceFormatter(widget.infoItem.price),
                  style: GoogleFonts.cairo(
                    height: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorsClass().backgroundGreen,
                  ),
                ),
              ],
            ),
            SizedBox(width: 82),
            QuantityWidget(
              isRemovable: true,
              suffixText: widget.infoItem.unit,
              value: 2,
              result: (value) {},
            )
          ],
        ),
      ),
    );
  }
}

class CartTile extends StatefulWidget {
  const CartTile({super.key, required this.item, required this.infoItem});
  final CartItemModel item;
  final ItemModel infoItem;
  @override
  State<CartTile> createState() => _CartTileState();
}
 */
