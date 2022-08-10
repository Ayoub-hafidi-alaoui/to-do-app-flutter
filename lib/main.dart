import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/home/HomeScreen.dart';
import 'package:task_management/my_theme_data.dart';

void main () {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        HomeScreen.ROUTE_NAME: (_) => HomeScreen()
      },
      initialRoute: HomeScreen.ROUTE_NAME,
      theme: MyTheme.lightTheme,
    );
  }

}