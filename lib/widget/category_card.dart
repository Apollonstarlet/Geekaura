import 'package:flutter/material.dart';
import '../screen/search_screen.dart';
import '../theme.dart';
import '../utils/dummy_data.dart';

class CategoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryCard(title: OptionCategories[0].name, imageAsset: OptionCategories[0].image),
              CategoryCard(title: OptionCategories[1].name, imageAsset: OptionCategories[1].image)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryCard(title: OptionCategories[2].name, imageAsset: OptionCategories[0].image),
              CategoryCard(title: OptionCategories[3].name, imageAsset: OptionCategories[1].image)
            ],
          )
        ],
        ));
  }
}

class CategoryCard extends StatelessWidget {
  String title;
  String imageAsset;

  CategoryCard({required this.title, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
      child: Material(
        color: colorWhite,
        shadowColor: primaryColor500.withOpacity(0.1),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: InkWell(
          highlightColor: primaryColor500.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          splashColor: primaryColor500.withOpacity(0.5),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SearchScreen(selectedDropdownItem: title,);
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: primaryColor100,
                    child: Image.asset(
                      imageAsset,
                      color: primaryColor500,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  title,
                  style: descTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
