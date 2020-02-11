import 'package:flutter/material.dart';
import '../screen/login.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.lightBlueAccent,
              size: 28.0,
            ),
            title: Text('Guest'),
            onTap: () {},
          ),
          Divider(color: Colors.lightBlueAccent),
          ListTile(
            leading:
                Icon(Icons.help, color: Colors.lightBlueAccent, size: 28.0),
            title: Text('Help'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.chevron_right,
                color: Colors.lightBlueAccent, size: 28.0),
            title: Text('Login'),
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
            leading: Icon(Icons.format_list_bulleted, color: Colors.blue[300]),
            title: Text('Terms of use'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
