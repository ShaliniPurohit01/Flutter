import 'package:flutter/material.dart';
import './radio_list_screen.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black87,
      //   title: Text(
      //     "SignUp",
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      body: Container(
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            headerSection(),
            textSection(),
            buttonSection(),
          ],
        ),
      ),
    );
  }

  Container headerSection() {
    return Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]));
  }

  Container textSection() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            cursorColor: Colors.white,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.person, color: Colors.white70),
              labelText: 'First Name',
              labelStyle: new TextStyle(color: Colors.white70),
              border: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white70)),
            ),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            cursorColor: Colors.white,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.person, color: Colors.white70),
              labelText: 'Last Name',
              labelStyle: new TextStyle(color: Colors.white70),
              border: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white70)),
            ),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            cursorColor: Colors.white,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: Colors.white70),
              labelText: 'Email',
              labelStyle: new TextStyle(color: Colors.white70),
              border: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white70)),
            ),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            cursorColor: Colors.white,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: Colors.white70),
              labelText: 'Password',
              labelStyle: new TextStyle(color: Colors.white70),
              border: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white70)),
            ),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            cursorColor: Colors.white,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: Colors.white70),
              labelText: 'Confirm Password',
              labelStyle: new TextStyle(color: Colors.white70),
              border: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white70)),
            ),
          ),
        ],
      ),
    );
  }

  Container buttonSection() {
    return Container(
      width: 100,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      margin: EdgeInsets.only(top: 15.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RadioList()),
          );
        },
        elevation: 0.0,
        color: Colors.blueAccent,
        child: Text("SignUp", style: TextStyle(color: Colors.white70)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }
}
