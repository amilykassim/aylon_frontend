import 'package:aylon_frontend/pages/splash/splashPage.dart';
import 'package:flutter/material.dart';

import 'pages/home/startPage.dart';
import 'pages/home/test.dart';
import 'pages/setting/changeSettingPage.dart';
import 'pages/setting/settingPage.dart';
import 'pages/shop/shopPage.dart';
import 'pages/single_post/singlePost.dart';

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
      home: SplashPage()
    );
  }
}
