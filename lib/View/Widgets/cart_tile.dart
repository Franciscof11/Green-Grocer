import 'package:flutter/material.dart';
import 'package:green_grocer/Model/item_model.dart';

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              SizedBox(
                width: 90,
                child: widget.item.image,
              ),
              Column(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CartTile extends StatefulWidget {
  const CartTile({super.key, required this.item});
  final ItemModel item;
  @override
  State<CartTile> createState() => _CartTileState();
}
