import 'package:flutter/material.dart';
import 'package:green_grocer/Utils/consts.dart';
import 'package:green_grocer/View/Pages/home_page.dart';

class _HomeBaseNavigationState extends State<HomeBaseNavigation> {
  int currentIndex = 0;

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass().backgroundGreen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Carrinho',
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Pedidos',
            icon: Icon(Icons.list),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(Icons.person_outline),
          )
        ],
      ),
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            HomePage(),
            Container(
              width: 500,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: 500,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: 500,
              height: 300,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeBaseNavigation extends StatefulWidget {
  HomeBaseNavigation({super.key});

  @override
  State<HomeBaseNavigation> createState() => _HomeBaseNavigationState();
}
