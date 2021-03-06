import 'package:flutter/material.dart';
import '../screen/login.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35.0),
      child: Row(
        children: <Widget>[
          Drawer(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.lightBlueAccent,
                    size: 28.0,
                  ),
                  title: Text(
                    'User',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  onTap: () {},
                ),
                Divider(color: Colors.lightBlueAccent),
                ListTile(
                  leading: Icon(Icons.help,
                      color: Colors.lightBlueAccent, size: 28.0),
                  title: Text('Help'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.chevron_left,
                      color: Colors.lightBlueAccent, size: 28.0),
                  title: Text('Logout', style: TextStyle()),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
                Divider(color: Colors.lightBlueAccent),
                ListTile(
                  leading: Icon(Icons.lock_outline,
                      color: Colors.lightBlueAccent, size: 28.0),
                  title: Text('Privacy Policy'),
                  onTap: () {},
                ),
                ListTile(
                  leading:
                      Icon(Icons.format_list_bulleted, color: Colors.blue[300]),
                  title: Text('Terms of use'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
