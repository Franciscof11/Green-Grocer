import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_grocer/Model/cart_item_model.dart';
import 'package:green_grocer/Utils/utils_services.dart';

import '../../Utils/consts.dart';
import 'amount_widget.dart';

class CartTile extends StatefulWidget {
  const CartTile(
      {super.key,
      required this.cartItem,
      required this.cartItems,
      required this.remove});
  final CartItemModel cartItem;
  final List<CartItemModel> cartItems;
  final Function(CartItemModel) remove;
  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    UtilsServices utilsServices = UtilsServices();

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(12)),
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

                if (quantity == 0) {
                  widget.remove(widget.cartItem);
                }
              });
            },
            suffixText: widget.cartItem.item.unit,
          ),
        ),
      ),
    );
  }
}
