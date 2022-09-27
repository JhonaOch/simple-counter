
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/contador_page.dart';
//import 'package:flutter_application_1/src/pages/home_page.dart';

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget{
  @override
    // ignore: duplicate_ignore
    Widget build(context) {
     // ignore: prefer_const_constructors
     return MaterialApp(
       // ignore: prefer_const_constructors
       debugShowCheckedModeBanner: false,
       home: Center(
         child:ContadorPage(),

       )
     );
  }

}