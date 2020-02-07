import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            headerSection(),
            textSection(),
            buttonSection(),
            forgetPassword(),
            bottomSection(),
          ],
        ),
      ),
    );
  }

  Container headerSection() {
    return Container(
        margin: EdgeInsets.only(top: 50.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  'Sign in to continue',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ]));
  }

  Container textSection() {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
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
              icon: Icon(Icons.email, color: Colors.white70),
              hintText: "Email",
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70)),
              hintStyle: TextStyle(color: Colors.white70),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            cursorColor: Colors.white,
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: Colors.white70),
              hintText: "Password",
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70)),
              hintStyle: TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }

  Container buttonSection() {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          new SizedBox(
            width: 150,
            height: 40,
            child: new RaisedButton(
              onPressed: () {},
              elevation: 0.0,
              color: Colors.blueAccent,
              child: Text("Login", style: TextStyle(color: Colors.white)),
              // color: pressed ? Colors.white : Colors.blueAccent,
              // child: Text("Login",
              //     style: pressed
              //         ? TextStyle(color: Colors.blueAccent)
              //         : TextStyle(color: Colors.white)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          new Container(height: 8.0, width: 50.0),
          new SizedBox(
            width: 150,
            height: 40,
            child: new RaisedButton(
              onPressed: () {},
              elevation: 0.0,
              color: Colors.blueAccent,
              child: Text("Guest", style: TextStyle(color: Colors.white)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ],
      ),
    );
  }

  Container forgetPassword() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 110.0),
      child: Row(
        children: <Widget>[
          Container(
            child: Text(
              'Forgot Your Password ?',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container bottomSection() {
    return Container(
      margin: EdgeInsets.only(top: 90.0),
      padding: EdgeInsets.fromLTRB(80, 140, 55, 0),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text("Don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ))
            ],
          ),
          new Container(height: 8.0, width: 20.0),
          Column(
            children: <Widget>[
              Text("Sign Up",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15.0,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
