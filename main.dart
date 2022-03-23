//import 'dart:js';

//import 'dart:js';

//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sozo/ArticleList.dart';
import 'package:sozo/Map.dart';
import 'package:sozo/loginpage.dart';
import 'home_page.dart';
import 'user_profile.dart';


void main() {
  runApp(
    MaterialApp(

      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Homepage(),
        '/first':(context)=>Homepage(),
        '/second':(context)=>UserProfile(),
        //'/third':(context)=>ArticlePage(),
        '/third':(context)=>ArticleList(title: "Safety Tips", key: ObjectKey("Safety Tips")),
        '/map':(context)=>MapPage(),
      },

    ),
  );
}
/*class landingclass extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context,snapshot){
          if(snapshot.hasError){
            return Scaffold(
                body: Center(
                  child:Text("Error :${snapshot.error}"),
                )
            );


          }
          if(snapshot.connectionState == ConnectionState.done){
            return StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),

                builder: (context,snapshot){
                  if(snapshot.connectionState == ConnectionState.active){
                    User? user = snapshot.data as User?;
                    if(user == null){
                      return Homepage();
                    }
                    else{
                      return Homepage();

                    }}
                  return Scaffold(
                      body:Center(
                        child: Text("Checking Authentication...."),
                      )

                  );


                }

            );

          }
          return Scaffold(
              body:Center(
                child: Text("Connecting to the app...."),
              )

          );

        }
    );
  }
}
*/
