import 'package:bubble_tea_shop_flutter/model/image_list.dart';
import 'package:flutter/material.dart';

class FoodCircleImages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FoodCircleWidgets();
  }
}

class FoodCircleWidgets extends State<FoodCircleImages> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    for (int index = 0; index < 4; index++) {
      widgets.add(Container(
        height: 400.0,
        width: 150.0,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150.0),
            boxShadow: [
              new BoxShadow(
                  color: Color.fromARGB(25, 0, 0, 0),
                  blurRadius: 5.0,
                  offset: Offset(5.0, 5.0))
            ],
            border: Border.all(
                width: 2.0,
                style: BorderStyle.none,
                color: Color.fromARGB(255, 0, 0, 0)),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(food[index]))),
        child: new Container(
          alignment: Alignment(0.0, 1.4),
          child: new Text(food_name[index]),
        ),
      ));
    }
    return Container(
        height: 200.0,
        color: Colors.grey[200],
        //circle item click listener
        child: new GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       new MaterialPageRoute(
            //           builder: (BuildContext context) => new Detail()));
            // },
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(20.0),
              children: widgets,
            )));
  }
}
