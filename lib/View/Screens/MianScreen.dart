import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:multi_vender_web_with_firebase/View/Screens/Side_nav_Screen/CategoriesScreen.dart';
import 'package:multi_vender_web_with_firebase/View/Screens/Side_nav_Screen/DashBoardScreen.dart';
import 'package:multi_vender_web_with_firebase/View/Screens/Side_nav_Screen/OtherScreen.dart';
import 'package:multi_vender_web_with_firebase/View/Screens/Side_nav_Screen/ProductScreen.dart';
import 'package:multi_vender_web_with_firebase/View/Screens/Side_nav_Screen/UploadBannerScreen.dart';
import 'package:multi_vender_web_with_firebase/View/Screens/Side_nav_Screen/VenderScreen.dart';
import 'package:multi_vender_web_with_firebase/View/Screens/Side_nav_Screen/WidrawScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget selectedItems = DashBoardScreen();
  ///////.......function for swiching screens.......//////
  selectorItems(items) {
    switch (items.route) {
      case DashBoardScreen.routeName:
        setState(() {
          selectedItems = DashBoardScreen();
        });
        break;
      case Venderscreen.routeName:
        setState(() {
          selectedItems = Venderscreen();
        });
        break;
      case Widrawscreen.routeName:
        setState(() {
          selectedItems = Widrawscreen();
        });
        break;
      case Otherscreen.routeName:
        setState(() {
          selectedItems = Otherscreen();
        });
        break;
      case Categoriesscreen.routeName:
        setState(() {
          selectedItems = Categoriesscreen();
        });
        break;
      case Productscreen.routeName:
        setState(() {
          selectedItems = Productscreen();
        });
        break;
      case Uploadbannerscreen.routeName:
        setState(() {
          selectedItems = Uploadbannerscreen();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade900,
        title: Text("Managment"),
      ),
      sideBar: SideBar(
        items: [
          AdminMenuItem(
              route: DashBoardScreen.routeName,
              title: "Dashboard",
              icon: Icons.dashboard),
          AdminMenuItem(
              route: Venderscreen.routeName,
              title: "  Vender",
              icon: CupertinoIcons.person_3),
          AdminMenuItem(
              route: Widrawscreen.routeName,
              title: "Withdrawal",
              icon: CupertinoIcons.money_dollar),
          AdminMenuItem(
              route: Otherscreen.routeName,
              title: "Order",
              icon: CupertinoIcons.shopping_cart),
          AdminMenuItem(
              route: Categoriesscreen.routeName,
              title: "Categories",
              icon: Icons.category),
          AdminMenuItem(
              route: Productscreen.routeName,
              title: "Product",
              icon: Icons.shop),
          AdminMenuItem(
              route: Uploadbannerscreen.routeName,
              title: "Uload Banners",
              icon: Icons.shop),
        ],
        selectedRoute: "",
        onSelected: (items) {
          selectorItems(items);
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: Color.fromARGB(255, 56, 47, 47),
          child: Center(
            child: Text(
              "Its My Store",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: Color.fromARGB(255, 56, 47, 47),
          child: Center(
            child: Text(
              "Header",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ),
      ),
      body: selectedItems,
    );
  }
}
