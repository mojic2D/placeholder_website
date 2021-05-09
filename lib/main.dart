import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/home_page_new.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      //home: HomePage(),
      home:HomePageNew(),
    );
  }
}



