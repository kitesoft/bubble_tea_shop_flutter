import 'package:bubble_tea_shop_flutter/model/image_list.dart';
import 'package:flutter/material.dart';

class FoodGridViewMenu extends StatefulWidget {
  @override
  _FoodGridViewMenuState createState() => _FoodGridViewMenuState();
}

class _FoodGridViewMenuState extends State<FoodGridViewMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("food"),
          backgroundColor: Colors.orange[400],
        ),
        body: new GridView.builder(
            itemCount: food.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              //grid view item click listener
              return new GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //       context,
                //       new MaterialPageRoute(
                //           builder: (BuildContext context) => new Detail()));
                // },
                child: new Card(
                  elevation: 5.0,
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        child: Expanded(
                          child: new Image.asset(
                            food[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: new Text(food_name[index]),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
