import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_button.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/helpers/column_with_seprator.dart';
import 'package:grocery_app/models/grocery_item.dart';
import 'package:grocery_app/widgets/chart_item_widget.dart';

import 'checkout_bottom_sheet.dart';

class CartScreen extends StatelessWidget {
  final List<GroceryItem> selectedItems;

  CartScreen({required this.selectedItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "My Cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: getChildrenWithSeparator(
                  addToLastChild: false,
                  widgets: selectedItems.map((e) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      width: double.maxFinite,
                      child: ChartItemWidget(
                        item: e,
                      ),
                    );
                  }).toList(),
                  separator: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              getCheckoutButton(context)
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getChildrenWithSeparator({
    required bool addToLastChild,
    required List<Widget> widgets,
    required Widget separator,
  }) {
    List<Widget> children = [];
    int lastIndex = widgets.length - 1;

    for (int i = 0; i < widgets.length; i++) {
      children.add(widgets[i]);

      if (addToLastChild || i < lastIndex) {
        children.add(separator);
      }
    }

    return children;
  }

  Widget getCheckoutButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: AppButton(
        label: "Go To Check Out",
        fontWeight: FontWeight.w600,
        padding: EdgeInsets.symmetric(vertical: 30),
        trailingWidget: getButtonPriceWidget(),
        onPressed: () {
          showBottomSheet(context);
        },
      ),
    );
  }

  Widget getButtonPriceWidget() {
    double totalPrice = calculateTotalPrice(selectedItems);
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Color(0xff489E67),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        "\Rs ${totalPrice.toStringAsFixed(2)}",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }

  double calculateTotalPrice(List<GroceryItem> items) {
    double totalPrice = 0.0;
    for (var item in items) {
      totalPrice += item.price;
    }
    return totalPrice;
  }

  void showBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext bc) {
        return CheckoutBottomSheet(
            totalPrice: calculateTotalPrice(selectedItems));
      },
    );
  }
}
