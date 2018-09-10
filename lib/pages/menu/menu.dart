import 'package:bubble_tea_shop_flutter/model/image_list.dart';
import 'package:bubble_tea_shop_flutter/pages/menu/foodCircleImages.dart';
import 'package:bubble_tea_shop_flutter/pages/menu/foodGridViewMenu.dart';
import 'package:bubble_tea_shop_flutter/pages/menu/teaCircleImages.dart';
import 'package:bubble_tea_shop_flutter/pages/menu/teaGridViewMenu.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
          backgroundColor: Colors.orange[400],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "Bubble Tea",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new TeaGridViewMenu()));
                    },
                    child: new Text("See all (" + tea.length.toString() + ")",
                        style: TextStyle(
                          fontSize: 25.0,
                        )),
                  ),
                ],
              ),
            ),
            TeaCircleImages(),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "Food",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new FoodGridViewMenu()));
                    },
                    child: new Text("See all (" + food.length.toString() + ")",
                        style: TextStyle(
                          fontSize: 25.0,
                        )),
                  ),
                ],
              ),
            ),
            FoodCircleImages(),
            
          ],
        ));
  }
}





