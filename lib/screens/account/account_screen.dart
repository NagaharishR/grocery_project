import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/helpers/column_with_seprator.dart';
import 'package:grocery_app/styles/colors.dart';
import '../welcome_screen.dart';
import 'account_item.dart';
import 'account_screen/about.dart';
import 'account_screen/deliveryaddress.dart';
import 'account_screen/help.dart';
import 'account_screen/mydetails.dart';
import 'account_screen/notification.dart';
import 'account_screen/orders.dart';
import 'account_screen/paymentmethods.dart';
import 'account_screen/promocard.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading:
                    SizedBox(width: 65, height: 65, child: getImageHeader()),
                title: AppText(
                  text: "Mohammed Hashim",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                subtitle: AppText(
                  text: "mohammedhashim44",
                  color: Color(0xff7C7C7C),
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              Column(
                children: getChildrenWithSeperator(
                  widgets: accountItems.map((e) {
                    return getAccountItemWidget(context, e);
                  }).toList(),
                  seperator: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              logoutButton(context),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget logoutButton(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          elevation: 0,
          backgroundColor: Color(0xffF2F3F2),
          textStyle: TextStyle(
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 25),
          minimumSize: const Size.fromHeight(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                "assets/icons/account_icons/logout_icon.svg",
              ),
            ),
            Text(
              "Log Out",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ),
            Container()
          ],
        ),
        onPressed: () {
          _logout(context);
        },
      ),
    );
  }

  Widget getImageHeader() {
    String imagePath = "assets/images/account_image.jpg";
    return CircleAvatar(
      radius: 5.0,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: AppColors.primaryColor.withOpacity(0.7),
    );
  }

  Widget getAccountItemWidget(BuildContext context, AccountItem accountItem) {
    return GestureDetector(
      onTap: () {
        _navigateToPage(context, accountItem);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                accountItem.iconPath,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              accountItem.label,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }

  void _navigateToPage(BuildContext context, AccountItem accountItem) {
    switch (accountItem.label) {
      case 'Orders':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OrdersPage()),
        );
        break;
      case 'My Details':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyDetailsPage()),
        );
        break;
      case 'Delivery Address':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DeliveryAddressPage()),
        );
        break;
      case 'Payment Methods':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaymentMethodsPage()),
        );
        break;
      case 'Promo Card':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PromoCardPage()),
        );
        break;
      case 'Notification':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationPage()),
        );
        break;
      case 'Help':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HelpPage()),
        );
        break;
      case 'About':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutPage()),
        );
        break;
    }
  }

  void _logout(BuildContext context) {
    // Perform logout actions here, such as clearing user session or preferences
    // After logout, navigate to the WelcomeScreen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WelcomeScreen()),
    );
  }
}
