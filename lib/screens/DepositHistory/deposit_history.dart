import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyIcons/my_flutter_app_icons.dart' as CustomIcons;
import 'package:royalbank/screens/DepositHistory/Tabs/complete_tab.dart';
import 'package:royalbank/screens/DepositHistory/Tabs/rejected_tab.dart';
import 'package:royalbank/screens/DepositHistory/Tabs/pending_tab.dart';

class DepositHistory extends StatefulWidget {
  @override
  _DepositHistoryState createState() => _DepositHistoryState();
}

class _DepositHistoryState extends State<DepositHistory> with SingleTickerProviderStateMixin {
  //create a tab controller
  TabController controller;

  @override
  void initState(){
    super.initState();
    //initiallize the Tab Controller
    controller= TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      isScrollable: false,
      tabs: <Tab>[
        Tab(
          child: new Container(
            width: 100.0,
            child: Column(
              children: <Widget>[
                new Icon(Icons.check_circle),
                new Text("Completed"),
              ],
            ),
          ),
        ),

        Tab(
          child: new Container(
            width: 100.0,
            child: Column(
              children: <Widget>[
                new Icon(CustomIcons.MyFlutterApp.cancel_circled),
                new Text("Rejected"),
              ],
            ),
          ),
        ),
        Tab(
          child: new Container(
            width: 100.0,
            child: Column(
              children: <Widget>[
                new Icon(CustomIcons.MyFlutterApp.right_circled2),
                new Text("Pending"),
              ],
            ),
          ),
        ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }


  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // Appbar
        appBar: AppBar(
          centerTitle: true,
          title: Text("Deposit History",),
          // Set the background color of the App Bar
          backgroundColor: Colors.red,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.menu,size: 25.0,color: Colors.white,),
            onPressed: (){
              Navigator.pushNamed(context, "/HomePage");
            },
          ),
          // Set the bottom property of the Appbar to include a Tab Bar
          bottom:  getTabBar(), brightness: Brightness.light,
           ),
        
        // Set the TabBar view as the body of the Scaffold
        body: getTabBarView(<Widget>[CompleteTab(), RejectedTab(), PendingTab()])
        
        /*body: getTabBarView(
            <Widget>[
              new Container(
                color: Colors.deepOrangeAccent,
                child: new Center(
                  child: new Text(
                    "Complete Tab Screen",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              new Container(
                color: Colors.blueGrey,
                child: new Center(
                  child: new Text(
                    "Rejected Tab Screen",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              new Container(
                color: Colors.teal,
                child: new Center(
                  child: new Text(
                    "Pending Tab Screen",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

            ],),*/
    );
  }
}
