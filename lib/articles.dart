import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 38.0,
                ),
                onPressed: (){Navigator.pop(context);},
              ),
              IconButton(icon: Icon(Icons.map, size: 35.0),onPressed: (){},),
              IconButton(icon: Icon(Icons.article, size: 35.0),onPressed: (){Navigator.pop(context,'/third');}),
              IconButton(icon: Icon(Icons.info_outline, size: 35.0),onPressed: (){Navigator.pop(context,'/second');}),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.red,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height /20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Safety Tips for Pedestrians",
                        style: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      child: Image.asset('images/img1.jpg'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                "images/susan.jpg",
                                width: 50,
                                height: 50,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("by Susan Simmons", style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 3,
                              height: 50,
                            ),

                            Text("on March 22, 2021",style: TextStyle(
                                fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 50, left: 50),
                        child: Text("Simple actions on road will keep you safe:\n"+
                            "1. Walk with care and with all sense.\n"+
                            "2. Look towards oncoming traffic.\n"+
                            "3. Never assume driver has seen you when you are about to cross the road, its your responsibility to save yourself.\n"+
                            "4. Avoid crossing road where drivers may not be able to see you.\n"+
                            "5. Wait for suitable gap in the traffic flow before crossing the road.\n"+
                            "6. Never jump over the divider railings. You may tumble on to the traffic.\n"+
                            "7. Always hold hands of children while crossing the road.\n"+
                            "8. Avoid using roads for morning walks and jogging.\n"+
                            "9. Take extra care if you have to cross the road on or near a crest or curve.\n"+
                            "10. Avoid crossing road between parked cars.\n"+
                            "11. Crossing road by the shortest and most direct route reduces your time on road.\n",
                        ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(238, 241, 242, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'comment...',
                                hintStyle: TextStyle(fontSize: 18)),
                          ),
                        ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
