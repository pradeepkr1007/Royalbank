import 'package:flutter/material.dart';

class LeftDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome"),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Navigate"),
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
            ),
            ListTile(
              title: Text('Make Deposit'),
              leading: Icon(Icons.monetization_on),
              onTap: (){
                //Navigate to Home Page Screen
              },
            ),
            ListTile(
              title: Text('Deposit History'),
              leading: Ink.image(image: null),
              onTap: (){
                //Navigate to Home Page Screen
              },
            ),
            ListTile(
              title: Text('Touch ID'),
              leading: Icon(Icons.touch_app),
              onTap: (){
                //Navigate to Home Page Screen
              },
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: (){
                //Navigate to Home Page Screen
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: (){
                //Navigate to Home Page Screen
              },
            ),
          ],
        )
      )
    );
  }
}
