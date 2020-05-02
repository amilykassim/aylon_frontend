import 'package:flutter/material.dart';
import 'pages/interests/interestPage.dart';
import 'pages/interests/setPage.dart';
import 'pages/login/login.dart';
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
      home: SetPage(),
    );
  }
}
