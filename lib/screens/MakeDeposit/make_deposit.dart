import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MakeDepositScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ExactAssetImage single_deposit = new ExactAssetImage("assets/single_cheque_deposit.png");
    ExactAssetImage multiple_deposit = new ExactAssetImage("assets/multiple_cheque_deposit.png");
    final Size screenSize = MediaQuery.of(context).size;

    onPressed(String routeName) {
      Navigator.of(context).pushNamed(routeName);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Make Deposit"),
        centerTitle: true,
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu,size: 25.0,color: Colors.white,),
          onPressed: (){
            Navigator.pushNamed(context, "/HomePage");
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome Pradeep\n",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/AccountSelection");
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0),
                decoration: new BoxDecoration(
                    border: new Border.all(
                      color: Colors.black26,
                      width: 3.0,
                    )
                ),
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Ink.image(image: single_deposit,width:(screenSize.width*0.95),height: screenSize.height/3.5,),
                      new Text("\nSingle Cheque Deposit",
                        style: TextStyle(
                            fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),

                      )
                    ]
                ),
              )
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,"/AccountSelection");
              },
              child: Container(
                decoration: new BoxDecoration(
                    border: new Border.all(
                    color: Colors.black26,
                    width: 3.0,
                  )
                ),
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Ink.image(image: multiple_deposit,width:(screenSize.width*0.95),height: screenSize.height/3.5,),
                      new Text("\nMultiple Cheque Deposit",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),

                      )
                    ]
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
