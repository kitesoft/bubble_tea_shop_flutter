import 'package:bubble_tea_shop_flutter/model/image_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(
      children: <Widget>[
        // new Padding(
        //   padding: const EdgeInsets.only(top: 4.0),
        // ),
        new Container(
          color: Colors.grey[200],
          height: 290.0,
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return new Image.asset(
                tea[index],
                fit: BoxFit.fitWidth,
              );
            },
            itemCount: tea.length,
            itemWidth: 300.0,
            layout: SwiperLayout.STACK,
            autoplay: true,
            pagination: new SwiperPagination(
                margin: new EdgeInsets.all(10.0),
                builder: new SwiperCustomPagination(
                    builder: (BuildContext context, SwiperPluginConfig config) {
                  return new ConstrainedBox(
                    child: new Container(
                        color: Color(0x00000000),
                        child: new Text(
                          "${tea_name[config.activeIndex]}",
                          style: new TextStyle(
                              fontSize: 20.0, fontFamily: 'Stocky'),
                          textDirection: TextDirection.rtl,
                        )),
                    constraints: new BoxConstraints.expand(height: 50.0),
                  );
                })),
          ),
        ),
        new Card(
          color: Colors.orange[200],
          elevation: 10.0,
          margin: const EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              new Image.asset(
                'images/ppl1.jpg',
                width: 400.0,
                height: 250.0,
                fit: BoxFit.fill,
              ),
              new ListTile(
                title: new Text(
                  "Place 1",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: new Text("1"),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 15.0),
              ),
            ],
          ),
        ),
        new Card(
          color: Colors.orange[200],
          elevation: 10.0,
          margin: const EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              new Image.asset(
                'images/ppl2.jpg',
                width: 400.0,
                height: 250.0,
                fit: BoxFit.fill,
              ),
              new ListTile(
                title: new Text(
                  "Place 2",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: new Text("2"),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 15.0),
              ),
            ],
          ),
        ),
        new Card(
          color: Colors.orange[200],
          elevation: 10.0,
          margin: const EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              new Image.asset(
                'images/ppl3.jpg',
                width: 400.0,
                height: 250.0,
                fit: BoxFit.fill,
              ),
              new ListTile(
                title: new Text(
                  "Place 3",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: new Text("3"),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 15.0),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
