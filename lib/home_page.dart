import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final List<String> texts = [
    'I am injured',
    'I am injured',
    'I am injured',
    'I am injured',
    'I am injured',
    'I am injured',
    'I am injured',
    'I am injured',
    'I am injured',
    'I am injured',
  ];
  /*Widget cardTemplate(t) {
    return Card(
        margin: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        child: Text(
          t,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.redAccent,
          ),
        ));
  }*/

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    onPressed: (){},
                  ),
                  IconButton(icon: Icon(Icons.map, size: 35.0),onPressed: (){},),
                  IconButton(icon: Icon(Icons.article, size: 35.0),onPressed: (){},),
                  IconButton(icon: Icon(Icons.info_outline, size: 35.0),onPressed: () {Navigator.pushNamed(context, '/second');},),
                ],
              ),
            ),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 0.0),
                        child: Icon(Icons.account_box_outlined),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Hello Susan!'),
                          Text('Complete your profile'),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text('Location:'),
                          Text('See your location:'),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 0.0),
                        child: Icon(
                          Icons.location_on,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Emergency help needed?',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Just click the button below',
                style: TextStyle(
                  fontSize: 15.0,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              IconButton(
                icon: Image.asset('assets/sos.png'),
                iconSize: 200.0,
                onPressed: () {},
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                '   Not sure what to do?\nPick the below options.',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: SizedBox(
                  height: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: texts
                        .map((text) => Container(
                        margin: EdgeInsets.fromLTRB(5.0, 30.0, 5.0, 50.0),
                        decoration: BoxDecoration(


                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: const Offset(
                                2.0,
                                2.0,
                                ), //Offset
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],

                        ),
                        width: 150.0,
                        height: 20.0,
                        child: Center(child: Text(text))))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
