import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'dart:async';
import 'package:royalbank/services/authentication.dart';
import 'package:royalbank/screens/DepositHistory/deposit_history.dart';
class HomeScreen extends StatefulWidget {
const HomeScreen({ Key key }) : super(key: key);

@override
HomeScreenState createState() => new HomeScreenState();

}

class HomeScreenState extends State<HomeScreen>{
  //Fetching Image Assets
  ExactAssetImage about_logo= new ExactAssetImage('assets/royal_bank_about.png');
  ExactAssetImage make_deposit= new ExactAssetImage('assets/make_deposit.png');
  ExactAssetImage deposit_history= new ExactAssetImage('assets/deposithistory.png');

  UserAuth userAuth = new UserAuth();

  onPressed(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Confirm Exit!!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Do you want to log out from your account?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel',),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Log Out',),
              onPressed: () {
                userAuth.logOut();
                Navigator.pushNamed(context, "/Login");
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text("Welcome Pradeep"),
        ),
        drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("\t Pradeep",),
                  accountEmail: Text("\t pradeepkr@gmail.com"),
                  currentAccountPicture: Icon(Icons.person_pin,size: 50.0,color: Colors.white,),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                ),
                ListTile(
                  title: Text('Make Deposit'),
                  leading: Ink.image(image: make_deposit,width: 30.0,height: 30.0,),
                  onTap: (){
                    Navigator.of(context).pop();
                    //Navigate to Make Deposit Screen
                    Navigator.pushNamed(context, "/MakeDeposit");
                  },
                ),
                ListTile(
                  title: Text('Deposit History'),
                  leading: Ink.image(image: deposit_history,width: 30.0,height: 30.0,),
                  onTap: (){
                    Navigator.of(context).pop();
                    //Navigate to Deposit History Screen
                    Navigator.pushNamed(context, "/DepositHistory");

                  },
                ),
                ListTile(
                  title: Text('Touch ID'),
                  leading: Icon(Icons.fingerprint, color: Colors.red,size: 30.0,),
                  onTap: (){
                    Navigator.pushNamed(context, "/EnableTouchID");
                  },
                ),
                ListTile(
                  title: Text('Log Out'),
                  leading: Icon(Icons.exit_to_app, color:Colors.red.shade300,size: 30.0,),
                  onTap: (){
                    // Navigator.pop(context);
                    _showMyDialog();
                  },
                ),
                ListTile(
                  title: Text('About Us'),
                  leading: Ink.image(image: about_logo,width: 40.0,height: 40.0,),
                  onTap: (){
                    Navigator.pushNamed(context,"/AboutBank");
                  },
                ),
            ]
          )
        )
    );
  }
}
