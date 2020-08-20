import 'dart:async';
import 'package:flutter/material.dart';
import 'package:royalbank/services/shared_preferences_data.dart';

class CaptureCheque extends StatefulWidget {
  @override
  _CaptureChequeState createState() => _CaptureChequeState();
}

class _CaptureChequeState extends State<CaptureCheque> {
  BuildContext context;
  SharedPreferenceHelper sharedPrefsHelper;

  onPressed(String routeName) async{
    await Navigator.of(context).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    this.context= context;
    final Size screenSize= MediaQuery.of(context).size;

    //TODO: Fetch Deposit Amount from Firebase/Deposit_Amount Screen
    var Amount= "100.00"; /*sharedPrefsHelper.fetchAmount;*/

    //TextStyle
    final TextStyle textStyle = new TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15.0,
      color: Colors.black);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Capture Cheque"),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/MakeDeposit");
              },
              child: Icon(Icons.close),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
                        Text("Cheque Amount",style: textStyle,),
                        Text("\$$Amount"),
                        /*TextField(
                          decoration: InputDecoration(
                            hintText: "\$",
                          ),
                        ),*/
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 20,
                    thickness: 2,
                    indent: 35,
                    endIndent: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Memo", style: textStyle,),
                        TextField(
                          decoration: InputDecoration(
                            labelText: " Deposit Memo",
                            labelStyle: TextStyle(color: Colors.grey)
                          ),
                        ),
                      ],
                    ),
                  ),
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
                    padding: const EdgeInsets.only(left: 10.0, top:15.0, right: 10.0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(" Capture Cheque Front",style: textStyle,),
                        IconButton(
                          icon: Icon(Icons.add_box, color: Colors.red, size: 25.0,),
                          onPressed: (){
                            Navigator.pushNamed(context,"/CameraML");
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 20,
                    thickness: 2,
                    indent: 35,
                    endIndent: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(" Capture Cheque Back",style: textStyle,),
                        IconButton(
                          icon: Icon(Icons.add_box, color: Colors.red, size: 25.0,),
                          onPressed: (){
                            Navigator.pushNamed(context,"/MLCamera");
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/CaptureCheque");
              },
              child: new Container(
                width: screenSize.width,
                height: screenSize.height*0.065,
                alignment: FractionalOffset.center,
                decoration: new BoxDecoration(
                  color: Colors.green,
                  borderRadius: new BorderRadius.all(const Radius.circular(13.0)),
                ),
                child: FlatButton(
                  onPressed: (){},
                  child: Text("Submit Cheque", style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

