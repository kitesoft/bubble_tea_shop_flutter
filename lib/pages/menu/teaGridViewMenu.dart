import 'package:bubble_tea_shop_flutter/model/image_list.dart';
import 'package:flutter/material.dart';

class TeaGridViewMenu extends StatefulWidget {
  @override
  _TeaGridViewMenuState createState() => _TeaGridViewMenuState();
}

class _TeaGridViewMenuState extends State<TeaGridViewMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("data"),
          backgroundColor: Colors.orange[400],
        ),
        body: new GridView.builder(
            itemCount: tea.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return new GestureDetector(
                //gird view item click listener
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
                            tea[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: new Text(tea_name[index]),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
