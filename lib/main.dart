import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './ui/homePage.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MaterialApp(
      title: "Pic Post", debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text("EXPLORE",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                  letterSpacing: 0.5)),
          leading: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 9.0, bottom: 9.0),
              child: InkWell(
                  child: Icon(Icons.dehaze, color: Colors.black),
                  onTap: () => _scaffoldKey.currentState.openDrawer(),
                  borderRadius: BorderRadius.all(Radius.circular(100.0)))),
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
          ]),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              height: 200.0,
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/drawerBanner.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4.0, color: Colors.white.withOpacity(0.3)),
                          shape: BoxShape.circle),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/userPic.jpeg"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      )),
                  SizedBox(height: 10.0),
                  Text("John Doe",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 5.0),
                  Text("john_doe@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 15.0)),
                  SizedBox(height: 20.0)
                ],
              ),
            ),
            ListTile(title: Text('Home'), trailing: Icon(Icons.home)),
            ListTile(title: Text('Chats'), trailing: Icon(Icons.chat)),
            ListTile(title: Text('Profile'), trailing: Icon(Icons.person)),
            ListTile(title: Text('Settings'), trailing: Icon(Icons.settings)),
            ListTile(title: Text('Log Out'), trailing: Icon(Icons.exit_to_app)),
          ],
        ),
      ),
      body: HomePage(),
    );
  }
}
