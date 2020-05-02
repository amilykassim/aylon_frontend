import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../pages/Likes/likePage.dart';
import '../../pages/discover/discoverPage.dart';
import '../../pages/home/homePage.dart';
import '../../utils/colors/colors.dart';

Widget setAppBar(
    {BuildContext context,
    @required String title,
    double elevation = 0,
    bool hideBackArrowIcon = false,
    bool isHomePage = false}) {
  if (isHomePage) {
    return AppBar(
      elevation: elevation,
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      // // centerTitle: true,
      // title: Text(
      //   title,
      //   style: TextStyle(
      //       color: Colors.black, fontFamily: productSans, letterSpacing: 10),
      // ),
      actions: <Widget>[
        IconButton(
          icon: Icon(FontAwesome.user_circle, color: Colors.black),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DiscoverPage()));
          },
        ),
        IconButton(
          icon: Icon(Icons.notification_important, color: Colors.black),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LikePage()));
          },
        ),
        IconButton(
          icon: Icon(Icons.search, color: Colors.black),
          onPressed: () {
             Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomePage()));
          },
        ),
      ],
    );
  } else {
    return AppBar(
      elevation: elevation,
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      centerTitle: true,
      title: Text(
        title != null ? title : 'Sign up',
        style: TextStyle(
          color: Colors.black,
          fontFamily: productSans,
        ),
      ),
      leading: hideBackArrowIcon == false
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )
          : null,
    );
  }
}
