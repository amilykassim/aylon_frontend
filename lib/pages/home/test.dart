//* CAROUSEL SLIDER STARTING POINT
// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class CarouselDemo extends StatefulWidget {
//   // CarouselDemo() : super();

//   final String title = "Carousel Demo";

//   @override
//   CarouselDemoState createState() => CarouselDemoState();
// }

// class CarouselDemoState extends State<CarouselDemo> {
//   //
//   CarouselSlider carouselSlider;
//   int _current = 0;
//   List imgList = [
//     'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
//     'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
//     'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
//     'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
//     'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
//   ];

//   // List<T> map<T>(List list, Function handler) {
//   //   List<T> result = [];
//   //   for (var i = 0; i < list.length; i++) {
//   //     result.add(handler(i, list[i]));
//   //   }
//   //   return result;
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             carouselSlider = CarouselSlider(
//               // height: 400.0,
//               // initialPage: 0,
//               enlargeCenterPage: true,
//               // aspectRatio: 2.0,
//               enableInfiniteScroll: false,
//               initialPage: 0,
//               autoPlay: false,
//               // autoPlay: false,
//               // reverse: false,
//               // enableInfiniteScroll: true,
//               // autoPlayInterval: Duration(seconds: 2),
//               // autoPlayAnimationDuration: Duration(milliseconds: 2000),
//               // pauseAutoPlayOnTouch: Duration(seconds: 10),
//               // scrollDirection: Axis.horizontal,
//               // onPageChanged: (index) {
//               //   setState(() {
//               //     _current = index;
//               //   });
//               // },
//               items: imgList.map((imgUrl) {
//                 return Builder(
//                   builder: (BuildContext context) {
//                     return Container(
//                       width: MediaQuery.of(context).size.width,
//                       margin: EdgeInsets.symmetric(horizontal: 5.0),
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                       ),
//                       child: Image.network(
//                         imgUrl,
//                         fit: BoxFit.fill,
//                       ),
//                     );
//                   },
//                 );
//               }).toList(),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.center,
//             //   children: map<Widget>(imgList, (index, url) {
//             //     return Container(
//             //       width: 10.0,
//             //       height: 10.0,
//             //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//             //       decoration: BoxDecoration(
//             //         shape: BoxShape.circle,
//             //         color: _current == index ? Colors.redAccent : Colors.green,
//             //       ),
//             //     );
//             //   }),
//             // ),
//             SizedBox(
//               height: 20.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//* CAROUSEL SLIDER ENDPOINT

//* START: PERSIST UI STATE WHILE NAVIGATING USING BOTTOM NAVIGATION BAR
// import 'package:flutter/material.dart';

// class TestPage extends StatefulWidget {
//   @override
//   _TestPageState createState() => _TestPageState();
// }

// class _TestPageState extends State<TestPage> {
//   final Key keyOne = PageStorageKey('pageOne');
//   final Key keyTwo = PageStorageKey('pageTwo');

//   int currentTab = 0;

//   PageOne one;
//   PageTwo two;
//   List<Widget> pages;
//   Widget currentPage;

//   List<Data> dataList;
//   final PageStorageBucket bucket = PageStorageBucket();

//   @override
//   void initState() {
//     dataList = [
//       Data(1, false, "Example-1"),
//       Data(2, false, "Example-2"),
//       Data(3, false, "Example-3"),
//       Data(4, false, "Example-4"),
//       Data(5, false, "Example-5"),
//       Data(6, false, "Example-6"),
//       Data(7, false, "Example-7"),
//       Data(8, false, "Example-8"),
//       Data(9, false, "Example-9"),
//       Data(10, false, "Example-10"),
//     ];
//     one = PageOne(
//       key: keyOne,
//       dataList: dataList,
//     );
//     two = PageTwo(
//       key: keyTwo,
//     );

//     pages = [one, two];

//     currentPage = one;

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Persistance Example"),
//       ),
//       body: PageStorage(
//         child: currentPage,
//         bucket: bucket,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentTab,
//         onTap: (int index) {
//           setState(() {
//             currentTab = index;
//             currentPage = pages[index];
//           });
//         },
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             title: Text("Settings"),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class PageOne extends StatefulWidget {
//   final List<Data> dataList;
//   PageOne({
//     Key key,
//     this.dataList,
//   }) : super(key: key);

//   @override
//   PageOneState createState() => PageOneState();
// }

// class PageOneState extends State<PageOne> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: widget.dataList.length,
//         itemBuilder: (context, index) {
//           return ExpansionTile(
//             key: PageStorageKey('${widget.dataList[index].id}'),
//             title: Text(widget.dataList[index].title),
//             // onExpansionChanged: (b) => setState(() {
//             //       widget.dataList[index].expanded = b;
//             //       PageStorage.of(context).writeState(context, b,
//             //           identifier: ValueKey(
//             //             '${widget.dataList[index].id}',
//             //           ));
//             //     }),
//             // initiallyExpanded: widget.dataList[index].expanded,
//             //  PageStorage.of(context).readState(
//             //           context,
//             //           identifier: ValueKey(
//             //             '${widget.dataList[index].id}',
//             //           ),
//             //         ) ??
//             //     false,
//             children: <Widget>[
//               Container(
//                 color: index % 2 == 0 ? Colors.orange : Colors.limeAccent,
//                 height: 100.0,
//               ),
//             ],
//           );
//         });
//   }
// }

// class PageTwo extends StatefulWidget {
//   PageTwo({Key key}) : super(key: key);

//   @override
//   PageTwoState createState() => PageTwoState();
// }

// class PageTwoState extends State<PageTwo> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemExtent: 250.0,
//       itemBuilder: (context, index) => Container(
//             padding: EdgeInsets.all(10.0),
//             child: Material(
//               elevation: 4.0,
//               borderRadius: BorderRadius.circular(5.0),
//               color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
//               child: Center(
//                 child: Text(index.toString()),
//               ),
//             ),
//           ),
//     );
//   }
// }

// class Data {
//   final int id;
//   bool expanded;
//   final String title;
//   Data(this.id, this.expanded, this.title);
// }

//* END: PERSIST UI STATE WHILE NAVIGATING USING BOTTOM NAVIGATION BAR

//* START: TABS
import 'package:aylon_frontend/pages/Likes/likePage.dart';

import 'package:aylon_frontend/reusable_components/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'homePage.dart';
import '../discover/discoverPage.dart';

class MainPersistentTabBar extends StatefulWidget {
  @override
  _MainPersistentTabBarState createState() => _MainPersistentTabBarState();
}

class _MainPersistentTabBarState extends State<MainPersistentTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: setAppBar(title: 'Aylon', isHomePage: true, context: context),
        body: TabBarView(
          children: [
            HomePage(),
            DiscoverPage(),
            LikePage(),
          ],
        ),

        bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.search),
              ),
              Tab(
                icon: Icon(Icons.explore),
              ),
              Tab(
                icon: Icon(FontAwesome.heart_o),
              ),
            ],
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            // indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.transparent),
      ),
    );
  }
}

//*  END TABS
