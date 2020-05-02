import 'package:flutter/material.dart';
import 'pages/Likes/likePage.dart';
import 'pages/Likes/singleCategoryViewLIkePage.dart';
import 'pages/home/homePage.dart';
import 'pages/home/startPage.dart';
import 'pages/home/test.dart';
import 'pages/splash/splashPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}
