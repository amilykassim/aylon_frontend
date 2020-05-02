import 'package:flutter/material.dart';
import '../../reusable_components/appbar/appbar.dart';
import '../../utils/colors/colors.dart';
import '../discover/discoverPage.dart';
import '../interests/interestPage.dart';
import 'post.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Item> itemList = [
    Item("assets/new_air.jpg", 1),
    Item("assets/black_white_shirt.jpg", 2),
    Item("assets/black_yello_shirt.jpg", 3),
    Item("assets/blue_jacket.jpg", 4),
    Item("assets/jordan.jpg", 5),
    Item("assets/kitenge_tshirt.jpg", 5),
    Item("assets/mix_color_shirt.jpg", 5),
    Item("assets/shark_tshirt.jpg", 6),
    Item("assets/t_shirt_grey.jpg", 6),
    Item("assets/three_color_tshirt.jpeg", 6),
    Item("assets/white_jacket.jpg", 7),
    Item("assets/white_tshirt.jpg", 7),
    Item("assets/new_air.jpg", 7),
  ];

  List<Post> posts = [
    Post(
        username: "Brianne",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg",
        postImage:
            "https://images.pexels.com/photos/302769/pexels-photo-302769.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Henri",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/kevka/128.jpg",
        postImage:
            "https://images.pexels.com/photos/884979/pexels-photo-884979.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
  ];

  Widget _buildListView() {
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            // posts
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (ctx, i) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image(
                                      image: NetworkImage(posts[i].userImage),
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(posts[i].username),
                                ],
                              ),
                              IconButton(
                                icon: Icon(Icons.phone_missed),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),

                        Image.asset('assets/Tarzan.jpg'),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.phone),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.chat),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.send),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.monetization_on),
                            ),
                          ],
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Liked By ",
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: "Sigmund,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " Yessenia,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " Dayana",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " and",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " 1263 others",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // caption
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 5,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: posts[i].username,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " ${posts[i].caption}",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // post date
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Febuary 2020",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridView() {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
        primary: false,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        itemCount: itemList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              child: Image.asset(itemList[index].imageUrl),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBottonNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentPage,
      onTap: (i) {
        setState(() {
          currentPage = i;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DiscoverPage()));
        });
      },
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Aylon"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text("Discover"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          title: Text("Likes"),
        ),
      ],
    );
  }

  Widget _buildUpperTitle() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 16, left: 10, right: 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Products',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: productSans,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 26, left: 10, right: 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'you might like',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  letterSpacing: 2,
                  fontFamily: productSans),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget gridPage = _buildGridView();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: setAppBar(title: 'Aylon', isHomePage: true),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _buildUpperTitle(),
              gridPage,
            ],
          ),
        ),
      ),
      // bottomNavigationBar: _buildBottonNavigationBar(),
    );
  }
}
