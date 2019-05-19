import 'package:flutter/material.dart';
import 'profilePage.dart';
import '../friendList.dart';

class HomePage extends StatelessWidget {
  var homePageContext;

  @override
  Widget build(BuildContext context) {
    homePageContext = context;
    return Material(
        color: Colors.white,
        child: ListView(children: [
          Container(
              width: double.infinity,
              height: 141.0,
              color: Colors.white,
              padding: EdgeInsets.only(top: 50.0),
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 65.0,
                            height: 65.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.orange),
                            child: Icon(Icons.add,
                                color: Colors.white, size: 25.0),
                          ),
                          SizedBox(height: 10.0),
                          Text("Add To")
                        ],
                      )),
                  getProfiles(friendList[0], true, 20.0),
                  getProfiles(friendList[1], false, 20.0),
                  getProfiles(friendList[2], false, 20.0),
                  getProfiles(friendList[3], false, 20.0),
                  getProfiles(friendList[4], false, 20.0),
                  getProfiles(friendList[5], false, 20.0),
                  getProfiles(friendList[6], false, 20.0),
                  getProfiles(friendList[7], false, 20.0),
                  getProfiles(friendList[8], false, 0.0),
                ],
              )),
          SizedBox(height: 50.0),
          Container(
              height: 298.0,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  getShortPostDownColumn(
                      "assets/postPic1.jpg",
                      "I like to place item to show more...",
                      friendList[8],
                      "10:51PM"),
                  getLongPost("assets/postPic5.jpeg")
                ],
              )),
          SizedBox(height: 20.0),
          Container(
              height: 298.0,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  getLongPost("assets/postPic6.jpg"),
                  getShortPostUpColumn(
                      "assets/postPic2.png",
                      "New stand in front of striped walls...",
                      friendList[6],
                      "09:14PM")
                ],
              )),
          SizedBox(height: 20.0),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    getOnlyPostDesc("Light theme bed looks so nice...",
                        friendList[4], "12:08AM"),
                    getOnlyPostDesc("Classic window with bright wall...",
                        friendList[2], "02:19AM")
                  ])),
          SizedBox(height: 50.0),
          Container(
              height: 298.0,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  getShortPostDownColumn(
                      "assets/postPic3.jpg",
                      "Coloury playroom for my baby...",
                      friendList[7],
                      "4:04PM"),
                  getLongPost("assets/postPic7.jpg")
                ],
              )),
          SizedBox(height: 20.0),
          Container(
              height: 298.0,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  getLongPost("assets/postPic8.jpg"),
                  getShortPostUpColumn(
                      "assets/postPic4.jpg",
                      "Guitar bought to add rythem in life...",
                      friendList[1],
                      "11:55AM")
                ],
              )),
          SizedBox(height: 20.0),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    getOnlyPostDesc("Yellow theme for my kitchen...",
                        friendList[3], "01:33AM"),
                    getOnlyPostDesc("New accent sofa for my guest room...",
                        friendList[5], "11:55AM")
                  ])),
          SizedBox(height: 30.0)
        ]));
  }

  Widget getOnlyPostDesc(String desc, Friend friend, String time) {
    return Container(
        width: MediaQuery.of(homePageContext).size.width * 0.45,
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
            child: Text(desc, style: TextStyle(fontSize: 15.0)),
          ),
          Row(children: <Widget>[
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(friend.profileImg), fit: BoxFit.cover),
                  shape: BoxShape.circle),
            ),
            SizedBox(width: 15.0),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("${friend.firstName} ${friend.lastName}",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 5.0),
                  Text(
                    time,
                    style: TextStyle(color: Colors.black38),
                  )
                ])
          ]),
        ]));
  }

  Widget getShortPostUpColumn(postImg, desc, friend, time) {
    return Container(
        width: MediaQuery.of(homePageContext).size.width * 0.45,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              getOnlyPostDesc(desc, friend, time),
              SizedBox(height: 20.0),
              Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(postImg), fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))))
            ]));
  }

  Widget getLongPost(postImg) {
    return Container(
      width: MediaQuery.of(homePageContext).size.width * 0.45,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(postImg), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
    );
  }

  Widget getShortPostDownColumn(postImg, desc, friend, time) {
    return Container(
        width: MediaQuery.of(homePageContext).size.width * 0.45,
        child: Column(children: <Widget>[
          Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(postImg), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)))),
          SizedBox(height: 20.0),
          getOnlyPostDesc(desc, friend, time)
        ]));
  }

  Widget getProfiles(Friend friend, bool online, double pad) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              homePageContext,
              MaterialPageRoute(
                  builder: (homePageContext) => ProfilePage(friend)));
        },
        child: Padding(
            padding: EdgeInsets.only(right: pad),
            child: Column(
              children: <Widget>[
                Container(
                    width: 65.0,
                    height: 65.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(friend.profileImg),
                            fit: BoxFit.cover))),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Text(friend.firstName),
                    SizedBox(width: 5.0),
                    online
                        ? Container(
                            width: 7.0,
                            height: 7.0,
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle))
                        : Container()
                  ],
                )
              ],
            )));
  }
}
