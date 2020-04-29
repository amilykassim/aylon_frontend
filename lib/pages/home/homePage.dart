import 'package:flutter/material.dart';

import '../../reusable_components/button/button.dart';
import '../introduction/introductionPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Aylon'),
      ),
      body: Container(
        child: Center(
          child: Button(
            text: 'Go back',
            navigateTo: IntroductionPage(),
          ),
        ),
      ),
    );
  }
}
