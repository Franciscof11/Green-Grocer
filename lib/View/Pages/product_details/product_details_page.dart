import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Model/item_model.dart';
import '../../../Utils/utils_services.dart';
import '../../Widgets/amount_widget.dart';

class ProductDetaislPage extends StatefulWidget {
  ProductDetaislPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemModel item;

  @override
  State<ProductDetaislPage> createState() => _ProductDetaislPageState();
}

class _ProductDetaislPageState extends State<ProductDetaislPage> {
  final UtilsServices utilsServices = UtilsServices();

  int cartItemQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Stack(
        children: [
          // Conteúdo
          Column(
            children: [
              Expanded(
                child: Hero(
                  tag: widget.item.name,
                  child: widget.item.image,
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Nome - Quantidade
                      Row(
                        children: [
                          Expanded(
                            child: Text(widget.item.name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.cairo(
                                  height: 1.4,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          QuantityWidget(
                            suffixText: widget.item.unit,
                            value: cartItemQuantity,
                            result: (quantity) {
                              setState(() {
                                cartItemQuantity = quantity;
                              });
                            },
                          ),
                        ],
                      ),

                      // Preço
                      Text(
                        utilsServices.priceFormatter(widget.item.price),
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      // Descrição
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SingleChildScrollView(
                            child: Text(
                              widget.item.description,
                              style: GoogleFonts.cairo(
                                height: 1.25,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Botão
                      SizedBox(
                        height: 55,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          label: Text(
                            'Add no carrinho',
                            style: GoogleFonts.cairo(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Botão voltar
          Positioned(
            left: 10,
            top: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
