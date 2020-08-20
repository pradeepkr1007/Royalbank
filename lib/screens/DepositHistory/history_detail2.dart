import 'package:flutter/material.dart';

class HistoryDetail2 extends StatefulWidget {
  @override
  _HistoryDetail2State createState() => _HistoryDetail2State();
}

class _HistoryDetail2State extends State<HistoryDetail2> {
  ScrollController scrollController = new ScrollController();

  //TextStyle
  final TextStyle textStyle = new TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15.0,
      color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HistoryDetail"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Container(
          margin: const EdgeInsets.only(top: 20.0,left: 5.0, right: 15.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.green[500],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Jul 13 2017 | 08:34:58 PM"),
                    Icon(Icons.check_circle, size: 30.0, color: Colors.white,)
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10.0),
                //color: Colors.greenAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Deposit Number:",style: textStyle,),
                          Text("000003765131"),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Account:",style: textStyle,),
                          Text("Mark Garcia, 46929088"),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Total Deposit Amount:",style: textStyle,),
                          Text("\$500.00"),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Status:",style: textStyle,),
                          Text("Completed"),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Memo:", style: textStyle,),
                          Text("two cheques", style: TextStyle(color: Colors.grey[500]),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120.0,
              ),
              Text("Cheques", style: textStyle,),
              //TODO: implement iterative functionality
              Card(
                margin: const EdgeInsets.only(top: 10.0, bottom: 20.0,left: 10.0,right: 10.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("ISN: \t 000001601132"),
                          Text("Check Number:\t 0846546"),
                          Text("Amount:\t \$100.00"),
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
                        onPressed: (){},
                        padding: const EdgeInsets.all(15.0),
                      ),
                    ],
                  ),
                ),
              ),

              Card(
                margin: const EdgeInsets.only(top: 10.0, bottom: 20.0,left: 10.0,right: 10.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("ISN: \t 000023770234"),
                          Text("Check Number:\t 0308563"),
                          Text("Amount:\t \$400.00"),
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
                        onPressed: (){},
                        padding: const EdgeInsets.all(15.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
