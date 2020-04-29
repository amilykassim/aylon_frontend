import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

import '../../reusable_components/button/button.dart';
import '../home/homePage.dart';

Container getShareWithFriendPage() {
  final String showItToYourFriends = 'assets/show_it_to_your_friends.flr';

  const TextStyle greyStyle = TextStyle(
      fontSize: 20.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  const TextStyle boldStyle = TextStyle(
    fontSize: 37.0,
    color: Colors.black,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold,
  );

  const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  return Container(
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 10,
          child: Container(
            child: FlareActor(showItToYourFriends,
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: "click"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "If you like it!",
                style: boldStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Show it to your friends",
                style: greyStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Now let's create your account now",
                style: descriptionGreyStyle,
              ),
              SizedBox(
                height: 10.0,
              ),

              //* button of let's finish
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Button(navigateTo: HomePage(), text: 'Finish'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
