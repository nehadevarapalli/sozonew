//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sozonew/ArticleList.dart';
import 'package:sozonew/loginpage.dart';
import 'home_page.dart';
import 'user_profile.dart';

void main() {
  runApp(
      MaterialApp(
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Home(),
          '/first':(context)=>Homepage(),
          '/second':(context)=>UserProfile(),
          '/third':(context)=>ArticleList(title: "Safety Tips"),
        },
      ),
  );
}
