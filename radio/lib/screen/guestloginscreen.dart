import 'package:flutter/material.dart';
import '../widget/app_drawer_guest.dart';

class GuestLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
        backgroundColor: Colors.black,
      ),
      drawer: AppDrawerGuest(),
      body: Container(
          color: Colors.black87,
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  'News',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 90,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 165.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(5.0))),
                    ),
                    Container(width: 20.0),
                    Container(
                      width: 165.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(5.0))),
                    ),
                    Container(width: 20.0),
                    Container(
                      width: 165.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(5.0))),
                    ),
                    Container(width: 20.0),
                    Container(
                      width: 165.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(5.0))),
                    ),
                    Container(width: 20.0),
                  ],
                ),
              ),
              //
              //
              //
              ListTile(
                title: Text(
                  'Hindi VOD\'s',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 90,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 165.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(5.0))),
                    ),
                    Container(width: 20.0),
                  ],
                ),
              ),
              //
              //
              //
              ListTile(
                title: Text(
                  'Radio',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 90,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 165.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(5.0))),
                    ),
                    Container(width: 20.0),
                  ],
                ),
              ),
              //
              //
              //
              ListTile(
                title: Text(
                  'Gujrati VOD\'s',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 90,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 165.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(5.0))),
                    ),
                    Container(width: 20.0),
                  ],
                ),
              ),
              //
              //
              //
              ListTile(
                title: Text(
                  'Punjabi VOD\'s',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 90,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 165.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(5.0))),
                    ),
                    Container(width: 20.0),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
