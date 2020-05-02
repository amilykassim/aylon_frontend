import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import '../../utils/colors/colors.dart';
import '../home/homePage.dart';

class SetPage extends StatelessWidget {
  final String aylonLogo = 'assets/done_check.flr';

  Widget _buildBoldText() {
    return Container(
      child: Text(
        'All set for You',
        style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: productSans,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildLightText() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Text(
        'Now you have, \nA 1000 shops in your hand',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontFamily: productSans,
        ),
      ),
    );
  }

  Widget _buildUpperLayout() {
    return Stack(
      children: <Widget>[
        Container(), //* THIS IS AN INVISIBLE PARENT THAT HELPS YOU LAYOUT YOUR BELOW WIDGETS
        Container(
          // color: Colors.blue,
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildBoldText(),
              _buildLightText(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        //***** SCROLL VIEW */
        child: Container(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                _buildUpperLayout(),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: SplashScreen.navigate(
                      name: aylonLogo,
                      next: (context) => HomePage(),
                      until: () => Future.delayed(Duration(seconds: 8)),
                      startAnimation: 'Animations',
                    ),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 16),
                //   child: Text(
                //     'A 1000 Shops in your hand',
                //     style: TextStyle(fontSize: 16),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
