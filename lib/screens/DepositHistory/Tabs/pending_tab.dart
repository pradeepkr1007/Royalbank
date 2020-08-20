import 'package:flutter/material.dart';
import '../MyIcons/my_flutter_app_icons.dart' as CustomIcons;

class PendingTab extends StatelessWidget {
  ScrollController scrollController = new ScrollController();
  final TextStyle textStyle = TextStyle(fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("June 24, 2017", style: TextStyle(fontWeight: FontWeight.bold),),
                Card(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(CustomIcons.MyFlutterApp.right_circled2, color: Colors.orange[300],size: 30.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Jun 24 2017 | 11:14:36 PM", style: textStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Deposit Amount:\t\t\t", style: textStyle,),
                                Text("\$456.00"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Number of Cheques:\t\t\t\t\t\t\t\t", style: textStyle,),
                                Text("3"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Account: ", style: textStyle,),
                                Text("Dani...17674401"),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_right, size: 30.0,color: Colors.grey[500],),
                          onPressed: (){},
                          padding: const EdgeInsets.all(15.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}