import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  List categories;

  @override
  void initState()
  {
    categories = getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final topBar = SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white),
            onPressed: ()async {
              await FirebaseAuth.instance.signOut();
              Navigator.pop(context,'/second');
            },
          ),
        ],
      ),
    );

    final stackContainer = Container(
      height: 300.0,
      child: Stack(
        children: <Widget>[
          Container(),
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 300.0,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage("assets/susan.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 4.0),
                Text(
                  "Susan Simmons",
                  style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Software Engineer",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
          topBar,
        ],
      ),
    );

    Card cardItem(Category categories) => Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 21.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    categories.icon,
                    size: 40.0,
                    color: Colors.red,
                  ),
                  onPressed: (){},
                ),
                SizedBox(width: 24.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(categories.field, style: TextStyle(
                      fontSize: 18.0,
                    ),
                    ),
                    SizedBox(height: 4.0),
                    Text(categories.content, style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 12.0,
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            stackContainer,
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index)
              {
                return cardItem(categories[index]);
              },
            ),
          ],
        ),
      ),

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
                onPressed: (){
                  Navigator.pop(context,'/third');
                },
              ),
              IconButton(icon: Icon(Icons.map, size: 35.0),onPressed: (){Navigator.pushNamed(context, '/map');},),
              IconButton(icon: Icon(Icons.article, size: 35.0),onPressed: (){Navigator.pop(context, '/second'); Navigator.pushNamed(context,'/third');}),
              IconButton(icon: Icon(Icons.info_outline, size: 35.0),onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 150);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
class Category {
  String content, field;
  IconData icon;

  Category(this.field, this.content, this.icon);
}

List<Category> getData() {
  return [
    Category('Date of Birth', '14 January 1982', Icons.calendar_today),
    Category('Age', '38 years old', Icons.cake),
    Category('Blood Type', 'O positive', Icons.pin_drop),
    Category('Height', '160 cm', Icons.height),
    Category('Weight', '75 kilograms', Icons.line_weight),
    Category('Allergies', 'Pollens, Peanuts, Milk, Egg', Icons.no_meals_sharp),
  ];
}