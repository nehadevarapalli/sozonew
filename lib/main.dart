//import 'dart:js';

import 'package:flutter/material.dart';
import 'home_page.dart';
import 'user_profile.dart';
void main() {
  runApp(
    MaterialApp(

      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Home(),
        '/second':(context)=>UserProfile(),
      },

    ),
  );
}
