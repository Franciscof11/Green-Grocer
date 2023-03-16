import 'package:flutter/material.dart';

class _AmountWidgetState extends State<AmountWidget> {
  @override
  Widget build(BuildContext context) {
    int count = 2;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      width: 84,
      height: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Center(
                  child: Icon(
                Icons.remove,
                color: Colors.white,
                size: 14,
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Text('$count${widget.unit}'),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: Center(
                  child: Icon(
                Icons.add,
                color: Colors.white,
                size: 14,
              )),
            ),
          )
        ],
      ),
    );
  }
}

class AmountWidget extends StatefulWidget {
  const AmountWidget({super.key, required this.unit});
  final String unit;
  @override
  State<AmountWidget> createState() => _AmountWidgetState();
}
