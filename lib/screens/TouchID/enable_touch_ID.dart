import 'package:flutter/material.dart';
import 'package:royalbank/screens/TouchID/disable_touch_ID.dart';

class EnableTouchID extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Touch ID"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 10.0, left: 5.0, top: 10.0, right: 5.0),
        width: screenSize.width*0.95,
        height: screenSize.height*0.95,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Card(
              child: new Icon(Icons.fingerprint, size: 150.0,color: Colors.red,),
              margin: const EdgeInsets.only(bottom: 15.0),
            ),
            new Card(
              child: Text("\nTouch ID allows you to quickly and securely log in \n "
                  "using fingerprint(s) setup to this device without \n"
                  "\t\t\thaving to enter your alphanumeric password.\n",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
              ),
              margin: const EdgeInsets.only(bottom: 200.0, top: 20.0),
            ),
            new RaisedButton(
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new DisableTouchID())
                );
              },
              child: const Text('Enabled Touch ID', style: TextStyle(fontSize: 20)),
            ),
          ],
         ),
        ),
    );
  }
}
