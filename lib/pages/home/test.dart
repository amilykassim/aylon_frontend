import 'package:aylon_frontend/pages/Likes/likePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int _currentIndex;
  List<Widget> _children;

  @override
  void initState() {
    _currentIndex = 0;
    _children = [
      Screen3(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Screen 1"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Screen 2"),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Screen 3")),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return SafeArea(
                top: false,
                bottom: false,
                child: CupertinoApp(
                  home: CupertinoPageScaffold(
                    resizeToAvoidBottomInset: false,
                    child: _children[_currentIndex],
                  ),
                ),
              );
            },
          );
        });
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: RaisedButton(
          child: Text("Click me"),
          onPressed: () {
            Navigator.of(context, rootNavigator: false).push(MaterialPageRoute(
                builder: (context) => LikePage(), maintainState: false));
          },
        ),
      ),
    );
  }
}
