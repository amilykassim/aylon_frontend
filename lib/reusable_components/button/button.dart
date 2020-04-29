import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget navigateTo;
  final String text;

  Button({this.navigateTo, this.text});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigateTo));
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
      color: Colors.blue,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(70.0),
      ),
    );
  }
}
