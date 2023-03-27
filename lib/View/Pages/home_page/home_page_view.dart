import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_grocer/Utils/consts.dart';
import 'package:green_grocer/View/Widgets/remove_glow_effect.dart';

import '../../../Model/app_mock_data.dart' as mock_data;
import '../../Widgets/category_tile.dart';
import '../../Widgets/grid_view_home_tile.dart';

class _HomePageState extends State<HomePage> {
  String selectedCategorie = 'Todos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass().backgroundGrey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 8),
            child: IconButton(
              onPressed: () {},
              icon: badges.Badge(
                badgeContent: Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: ColorsClass().backgroundGreen,
                  size: 28,
                ),
              ),
            ),
          ),
        ],
        title: Text.rich(
          TextSpan(
              text: 'Green',
              style: GoogleFonts.cairo(
                fontSize: 40,
                color: ColorsClass().backgroundGreen,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: 'grocer',
                    style: GoogleFonts.cairo(
                      fontSize: 40,
                      color: ColorsClass().redFontTitleApp,
                      fontWeight: FontWeight.bold,
                    )),
              ]),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //
            //Pesquisa
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search_outlined),
                prefixIconColor: ColorsClass().redFontTitleApp,
                hintText: "Pesquise Aqui...",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),

            //
            //Seleção Categorias
            SizedBox(height: 20),
            SizedBox(
              height: 35,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                separatorBuilder: (_, index) => SizedBox(width: 12),
                itemCount: mock_data.categories.length,
                itemBuilder: (_, index) => CategoryTile(
                  label: mock_data.categories[index],
                  isSelected: mock_data.categories[index] == selectedCategorie,
                  onPressed: () {
                    setState(() {
                      selectedCategorie = mock_data.categories[index];
                    });
                  },
                ),
              ),
            ),

            //
            //GridView Items
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: RefreshIndicator(
                  onRefresh: () {
                    return Future(() => null);
                  },
                  child: RemoveGlowEffect(
                    child: GridView.builder(
                      itemCount: mock_data.categories.length,
                      physics: AlwaysScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 230,
                      ),
                      itemBuilder: (_, index) =>
                          GridViewHomeTile(itemModel: mock_data.items[index]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
