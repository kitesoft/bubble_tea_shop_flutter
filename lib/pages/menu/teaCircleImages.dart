import 'package:bubble_tea_shop_flutter/model/image_list.dart';
import 'package:flutter/material.dart';

class TeaCircleImages extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TeaCircleWidgets();
  }
}

class TeaCircleWidgets extends State<TeaCircleImages> {
  int index;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    for (index = 0; index < 4; index++) {
      widgets.add(Container(
        height: 400.0,
        width: 150.0,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150.0),
            boxShadow: [
              new BoxShadow(
                  color: Color.fromARGB(20, 0, 0, 0),
                  blurRadius: 1.0,
                  offset: Offset(5.0, 5.0))
            ],
            border: Border.all(
                width: 1.0,
                style: BorderStyle.none,
                color: Color.fromARGB(255, 0, 0, 0)),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(tea[index]))),
        child: new Container(
          alignment: Alignment(0.0, 1.4),
          child: new Text(tea_name[index]),
        ),
      ));
    }
    return Container(
        height: 200.0,
        color: Colors.grey[200],
        //circl item click listener
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
