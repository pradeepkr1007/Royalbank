import 'package:flutter/material.dart';
import '../MyIcons/my_flutter_app_icons.dart' as CustomIcons;

class RejectedTab extends StatelessWidget {
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
                Text("May 26, 2017", style: TextStyle(fontWeight: FontWeight.bold),),
                Card(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(CustomIcons.MyFlutterApp.cancel_circled, color: Colors.red[600],size: 30.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("May 26 2017 | 11:18:23 PM", style: textStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Deposit Amount:\t\t\t", style: textStyle,),
                                Text("\$500.00"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Number of Cheques:\t\t\t\t\t\t\t\t", style: textStyle,),
                                Text("2"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Account: ", style: textStyle,),
                                Text("Mich...33293765"),
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