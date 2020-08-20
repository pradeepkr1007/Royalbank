import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:royalbank/services/authentication.dart';

class CompleteTab extends StatelessWidget {
  BuildContext context;
  ScrollController scrollController = new ScrollController();
  UserAuth userAuth= new UserAuth();

  onPressed(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  final TextStyle textStyle = TextStyle( fontWeight: FontWeight.bold);
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
                Text("July 20, 2017", style: TextStyle(fontWeight: FontWeight.bold,),),
                Card(
                  margin: const EdgeInsets.only(bottom: 30.0, top: 5.0,left: 15.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.check_circle, color: Colors.green[400],size: 30.0,),
                        const VerticalDivider(
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Jul 20 2017 | 04:14:38 PM", style: textStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Deposit Amount:\t\t\t", style: textStyle,),
                                Text("\$100.00"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Number of Cheques:\t\t\t\t\t\t\t\t", style: textStyle,),
                                Text("1"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Account: ", style: textStyle,),
                                Text("John...37817174"),
                              ],
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_right, size: 30.0,color: Colors.grey[500],),
                          onPressed: (){
                            Navigator.pushNamed(context,"/HistoryDetail");
                          },
                          padding: const EdgeInsets.all(15.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //TODO: Make this process iterative
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("July 13, 2017", style: TextStyle(fontWeight: FontWeight.bold,),),
                Card(
                  margin: const EdgeInsets.only(bottom: 30.0, top: 5.0,left: 15.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.check_circle, color: Colors.green[400],size: 30.0,),
                        const VerticalDivider(
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Jul 13 2017 | 08:34:58 PM", style: textStyle,),
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
                                Text("Mark...46929088"),
                              ],
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_right, size: 30.0,color: Colors.grey[500],),
                          onPressed: (){
                            Navigator.pushNamed(context,"/HistoryDetail2");
                          },
                          padding: const EdgeInsets.all(15.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("June 29, 2017", style: TextStyle(fontWeight: FontWeight.bold,),),
                Card(
                  margin: const EdgeInsets.only(bottom: 30.0, top: 5.0,left: 15.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.check_circle, color: Colors.green[400],size: 30.0,),
                        const VerticalDivider(
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Jun 29 2017 | 06:37:48 PM", style: textStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Deposit Amount:\t\t\t", style: textStyle,),
                                Text("\$1230.00"),
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
                                Text("Paul...56406556"),
                              ],
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_right, size: 30.0,color: Colors.grey[500],),
                          onPressed: (){
                            Navigator.pushNamed(context,"/HistoryDetail");
                          },
                          padding: const EdgeInsets.all(15.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("June 23, 2017", style: TextStyle(fontWeight: FontWeight.bold,),),
                Card(
                  margin: const EdgeInsets.only(bottom: 30.0, top: 5.0,left: 15.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.check_circle, color: Colors.green[400],size: 30.0,),
                        const VerticalDivider(
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Jun 23 2017 | 04:14:38 PM", style: textStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Deposit Amount:\t\t\t", style: textStyle,),
                                Text("\$1324.00"),
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
                                Text("John...37817174"),
                              ],
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_right, size: 30.0,color: Colors.grey[500],),
                          onPressed: (){
                            Navigator.pushNamed(context,"/HistoryDetail");
                          },
                          padding: const EdgeInsets.all(15.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("June 10, 2017", style: TextStyle(fontWeight: FontWeight.bold,),),
                Card(
                  margin: const EdgeInsets.only(bottom: 30.0, top: 5.0,left: 15.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.check_circle, color: Colors.green[400],size: 30.0,),
                        const VerticalDivider(
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Jun 10 2017 | 04:14:38 PM", style: textStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Deposit Amount:\t\t\t", style: textStyle,),
                                Text("\$100.00"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Number of Cheques:\t\t\t\t\t\t\t\t", style: textStyle,),
                                Text("1"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Account: ", style: textStyle,),
                                Text("Chris...14768868"),
                              ],
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_right, size: 30.0,color: Colors.grey[500],),
                          onPressed: (){
                            Navigator.pushNamed(context,"/HistoryDetail");
                          },
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
