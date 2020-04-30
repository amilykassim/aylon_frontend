import 'package:flutter/material.dart';

import '../../utils/colors/colors.dart';

Widget setAppBar(
    {BuildContext context, String title, bool hideBackArrowIcon = false}) {
  return AppBar(
    elevation: 0,
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
