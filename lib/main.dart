import 'package:flutter/material.dart';
import 'package:plantui_sid/plantlsit.dart';

void main() {
  runApp(MaterialApp(
      home: MyHomePage()
  )
  );
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.9,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.menu,color: Colors.white,), onPressed: () {}),
                Text(
                  "Plant Shop",
                  style: TextStyle(
                      color: Colors.white ,
                      fontFamily: 'Montserrant Bold',
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white.withOpacity(0.2),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 25.0,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "Top Picks",
              style: TextStyle(
                  fontFamily: 'Montserrant Bold',
                  fontSize: 35.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Tops",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrant regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Outdoors",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrant regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Indoors",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrant regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Plants",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrant regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                PlantList(),
                PlantList(),
                PlantList(),
                PlantList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
