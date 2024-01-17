import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/models/category_item.dart';
import 'package:grocery_app/widgets/grocery_item_card_widget.dart';
import 'package:grocery_app/screens/product_details/product_details_screen.dart';
import '../models/grocery_item.dart';

class CategoryItemsScreen extends StatelessWidget {
  final CategoryItem categoryItem;

  CategoryItemsScreen({required this.categoryItem});

  @override
  Widget build(BuildContext context) {
    List<GroceryItem> categoryProducts = [];

    Map<String, List<GroceryItem>> categoryMap = {
      "Flour, Rice, Oil& Dal": rice,
      "Masala & Dryfruits": masalas,
      "Chips": Chips,
      "Packaged Foods": foods,
      "Tea & Coffee": teacoffee,
      "Biscuits & Cookies": biscuits,
      "Makeup & Skincare": makeups,
      "Bath, Body, Hair": soapshampoo,
      "Cleaning Essentials": cleaningEssentials,
    };

    categoryProducts = categoryMap[categoryItem.name] ?? [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: AppText(
            text: categoryItem.name,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          children: categoryProducts.map<Widget>((groceryItem) {
            return GestureDetector(
              onTap: () {
                onItemClicked(context, groceryItem);
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: GroceryItemCardWidget(
                  item: groceryItem,
                  heroSuffix: "explore_screen",
                ),
              ),
            );
          }).toList(),
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 0.0,
        ),
      ),
    );
  }

  void onItemClicked(BuildContext context, GroceryItem groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          groceryItem,
          heroSuffix: "explore_screen",
        ),
      ),
    );
  }
}
