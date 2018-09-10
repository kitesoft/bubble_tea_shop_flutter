import 'package:bubble_tea_shop_flutter/pages/about/about.dart';
import 'package:bubble_tea_shop_flutter/pages/news.dart';
import 'package:bubble_tea_shop_flutter/pages/menu/menu.dart';
import 'package:bubble_tea_shop_flutter/pages/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.orange);
    return new Scaffold(
      backgroundColor: Colors.grey,
      body: new PageView(
          //disable swipe
          physics: new NeverScrollableScrollPhysics(),
          children: [new News(), new Menu(), new ShoppingCart(), new About()],
          controller: pageController,
          onPageChanged: onPageChanged),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.new_releases),
          title: new Text("News"),
          backgroundColor: Colors.orange[400],
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.restaurant),
          title: new Text("Menu"),
          backgroundColor: Colors.orange[400],
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.shopping_cart),
          title: new Text("Shopping Cart"),
          backgroundColor: Colors.orange[400],
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.info_outline),
          title: new Text("About"),
          backgroundColor: Colors.orange[400],
        ),
      ], onTap: onTap, currentIndex: page),
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController(initialPage: this.page);
  }

  void onTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this.page = page;
    });
  }
}
