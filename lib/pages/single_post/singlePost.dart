import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../reusable_components/appbar/appbar.dart';
import '../../utils/colors/colors.dart';
import '../home/post.dart';
import '../interests/interestPage.dart';

class SinglePostPage extends StatefulWidget {
  final String shopName;
  final String shopOwner;
  final String shopProfileImage;
  final String postImage;

  SinglePostPage({
    Key key,
    @required this.shopName,
    @required this.shopOwner,
    @required this.shopProfileImage,
    @required this.postImage,
  }) : super(key: key);

  @override
  _SinglePostPageState createState() => _SinglePostPageState();
}

class _SinglePostPageState extends State<SinglePostPage> {
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

  final String likeAnimation = 'assets/like_heart.flr';
  bool liked = false;

  void toggleLike() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: setAppBar(title: 'Discover', context: context, elevation: 1),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildPostImage(),
                _buildIconsLayout(context),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'New Air Jordan on the market right now, if you love it please feel free to call me, I\'ll be happy to help you',
                        style: TextStyle(fontSize: 14, fontFamily: productSans),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Room no: 37, 5th floor Chic building',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: productSans,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                _buildUpperTitle(
                    title: 'Similar Products', marginLeft: 20, marginTop: 16),
                _buildGridView(context: context, images: itemList)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBargainButton({String text, Color color = childColor}) {
    return Container(
      height: 30,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: FlatButton(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontFamily: productSans,
          ),
        ),
        onPressed: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => navigateTo));
        },
        color: color,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  Widget _buildPostImage() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(widget.postImage),
    );
  }

  Widget _buildIconsLayout(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image(
                    image: NetworkImage(
                        'https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg'),
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                _buildBargainButton(text: 'Bargain', color: Colors.teal),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(SimpleLineIcons.options),
                  onPressed: () {},
                ),
                Container(
                  width: 50,
                  height: (liked == true) ? 35 : null,
                  child: (liked == true)
                      ? InkWell(
                          onTap: toggleLike,
                          child: FlareActor(
                            likeAnimation,
                            animation: "favorite",
                          ),
                        )
                      : IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {
                            toggleLike();
                          },
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUpperTitle(
      {@required String title,
      double marginTop = 10.0,
      double marginLeft = 10.0}) {
    return Container(
      margin: EdgeInsets.only(top: marginTop, left: marginLeft, right: 5),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: productSans,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildGridView(
      {@required BuildContext context, @required List images}) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        primary: false,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        itemCount: images.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              child: Image.asset(images[index].imageUrl),
            ),
          );
        },
      ),
    );
  }
}
