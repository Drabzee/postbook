import "package:flutter/material.dart";
import '../friendList.dart';

class ProfilePage extends StatelessWidget {
  BuildContext profilePageContext;
  Friend friend;
  ProfilePage(this.friend);

  @override
  Widget build(BuildContext context) {
    profilePageContext = context;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
            leading: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 9.0, bottom: 9.0),
                child: InkWell(
                    child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 19.0),
                    onTap: () {Navigator.pop(profilePageContext);},
                    borderRadius: BorderRadius.all(Radius.circular(100.0)))),
          title: Text("PROFILE",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                  letterSpacing: 0.5)),
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      right: 13.0, top: 9.0, bottom: 9.0, left: 13.0),
                  child: InkWell(
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.0),
                          child: Icon(Icons.search, color: Colors.black)),
                      onTap: () => null,
                      borderRadius: BorderRadius.all(Radius.circular(100.0))))
            ]
        ),
        body: Material(
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(height: 20.0),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(friend.profileImg),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(friend.firstName,
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(width: 10.0),
                            friend.firstName == "Rosalie"
                                ? Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        shape: BoxShape.circle),
                                    child: Icon(Icons.check,
                                        color: Colors.white, size: 15.0),
                                  )
                                : Container()
                          ]),
                      SizedBox(height: 10.0),
                      Text(friend.desc,
                          style: TextStyle(color: Colors.black38)),
                      SizedBox(height: 50.0),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text("353",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22.0)),
                                SizedBox(height: 5.0),
                                Text("Photos",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15.0))
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text("124",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22.0)),
                                SizedBox(height: 5.0),
                                Text("Videos",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15.0))
                              ],
                            ),
                            Column(children: <Widget>[
                              Text("74k",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22.0)),
                              SizedBox(height: 5.0),
                              Text("Likes",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15.0))
                            ])
                          ])
                    ]),
                SizedBox(height: 50.0),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Photos",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 22.0)),
                        Text("View all", style: TextStyle(color: Colors.orange))
                      ],
                    )),
                SizedBox(height: 30.0),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: getImageRow(1, 2, 3)),
                SizedBox(height: 20.0),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: getImageRow(4, 5, 6)),
                SizedBox(height: 50.0),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Videos",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 22.0)),
                        Text("View all", style: TextStyle(color: Colors.orange))
                      ],
                    )),
                SizedBox(height: 30.0),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: getVideoTile("assets/profileVideos/image1.jpg")),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: getVideoTile("assets/profileVideos/image2.jpg")),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: getVideoTile("assets/profileVideos/image3.jpg")),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: getVideoTile("assets/profileVideos/image4.jpg")),
                SizedBox(height: 20.0)
              ],
            )));
  }

  Widget getVideoTile(img) {
    return Container(
        width: double.infinity,
        height: 200.0,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/playButton.png'))),
            )
          ],
        ));
  }

  Widget getImageRow(img1, img2, img3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        getImageTile(img1),
        getImageTile(img2),
        getImageTile(img3)
      ],
    );
  }

  Widget getImageTile(img) {
    return Container(
      width: MediaQuery.of(profilePageContext).size.width * 0.28,
      height: MediaQuery.of(profilePageContext).size.width * 0.28,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/profileImages/image$img.jpg"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
