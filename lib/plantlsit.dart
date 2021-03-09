import 'package:flutter/material.dart';


/*This is to verify branching
This is to verify branching
This is to verify branching
This is to verify branching
This is to verify branching
This is to verify branching
This is to verify branching



*/
class PlantList extends StatefulWidget {
  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  ScrollController _scrollController;

  List<String> allDescription = [
    'Aloe vera is a succulent plant species of the genus Aloe. An evergreen perennial, it originates from the Arabian Peninsula, but grows wild in tropical, semi-tropical, and arid climates around the world. It is cultivated for agricultural and medicinal uses.',
    'Ficus benjamina, commonly known as weeping fig, benjamin fig or ficus tree, and often sold in stores as just ficus, is a species of flowering plant in the family Moraceae, native to Asia and Australia. It is the official tree of Bangkok.',
    'Third'
  ];

  String description;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
      description = allDescription[0];
    });
  }

  void changedesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 150).round();
    print(value);
    setState(() {
      description = allDescription[descIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(left: 30.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getPlantCard(
                  'assets/images/aloevera.png', '25', 'OUTDOOR', 'Aloe Vera'),
              getPlantCard('assets/images/ficus.png', '25', 'INDOOR', 'Ficus'),
              getPlantCard('assets/images/whiteplant.png', '25', 'OUTDOOR',
                  'White Plant'),
              SizedBox(
                width: 10.0,
              )
            ],
          ),
        ),

        //Decsription Section
        Padding(
          padding: EdgeInsets.only(left: 30.0, top: 10.0),
          child: Text(
            "Desciption",
            style: TextStyle(
                fontFamily: "Montserrant Bold",
                fontSize: 26.0,
                fontWeight: FontWeight.w500),
          ),
        ),

        // Description Info
        Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          child: Text(
            description,
            style: TextStyle(
                fontFamily: "Montserrant Bold",
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  getPlantCard(
      String imgPath, String price, String plantType, String plantName) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15.0),
          height: 325.0,
          width: 225.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF399063)),
            height: 250.0,
            width: 225.0,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'FROM',
                          style: TextStyle(
                              fontFamily: 'Montserrant regular',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8AC7A4)),
                        ),
                        Text(
                          '\$' + price,
                          style: TextStyle(
                              fontFamily: 'Montserrant Bold',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
                Image(
                  image: AssetImage(imgPath),
                  height: 160.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          plantType,
                          style: TextStyle(
                              fontFamily: 'Montserrant Bold',
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8AC7A4)),
                        ),
                        Text(
                          plantName,
                          style: TextStyle(
                              fontFamily: 'Montserrant Bold',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    //icon 1
                    SizedBox(
                      width: 25.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF399063)),
                      child: Icon(
                        Icons.wb_sunny,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),

                    //icon 2
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF399063)),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),

                    //icon 3
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF399063)),
                      child: Icon(
                        Icons.perm_identity,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),

                    //icon 4
                    SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(color: Color(0xFF399063)),
                        child: Icon(
                          Icons.help_outline,
                          color: Colors.white.withOpacity(0.4),
                          size: 20.0,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 95.4, top: 300.0),
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0), color: Colors.black),
            child: Center(
              child: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
