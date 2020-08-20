import 'package:flutter/material.dart';
import 'package:royalbank/screens/Home/index.dart';

class DisableTouchID extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    ExactAssetImage touch_logo= new ExactAssetImage("assets/assets/touchid.png");
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
        color: Colors.white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Card(
              child: new Icon(Icons.fingerprint, size: 150.0,color: Colors.red,),
              margin: const EdgeInsets.only(bottom: 15.0),
            ),
            new Card(
              child: Text("\n\t\tTouch ID is currently enabled.\t\t\n"),
              margin: const EdgeInsets.only(bottom: 250.0, top: 20.0),
            ),
            new RaisedButton(
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new HomeScreen())
                );
              },
              child: const Text('Disable Touch ID', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
