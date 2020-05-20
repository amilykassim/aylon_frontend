import 'package:aylon_frontend/pages/home/test.dart';
import 'package:flutter/material.dart';
import 'pages/home/startPage.dart';

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
      home: MainPersistentTabBar(),
    );
  }
}
