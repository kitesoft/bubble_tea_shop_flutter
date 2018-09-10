import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.orange[400],
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      title: Text("About us",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          )),
                      background: Image.asset(
                        "images/about.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      indicatorColor: Colors.black,
                      indicatorWeight: 1.0,
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.black,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.home),
                          text: "Our Company",
                        ),
                        //Tab(icon: Icon(Icons.map), text: "Location"),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: new Image.asset(
                        'images/workingplace.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Expanded(
                      child: new Container(
                        color: Colors.grey[200],
                        padding: EdgeInsets.all(10.0),
                        child: new Text(
                          "Bubble Tea Is Also Known As Boba Drink, Pearl Tea Drink, Boba Ice Tea, Boba, Boba Nai Cha, Zhen Zhou Nai Cha, Pearl Milk Tea, Pearl Ice Tea, Black Pearl Tea, Tapioca Ball Drink, BBT, PT, Pearl Shake, QQ (Which Means Chewy In Taiwanese) And Possibly Many Others.",
                          style: new TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.orange[200],
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
