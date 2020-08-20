import 'package:flutter/material.dart';

class AboutBank extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    final Size screenSize = MediaQuery.of(context).size;
    ExactAssetImage logo = new ExactAssetImage('assets/royal_bank_logo.png');

    return Scaffold(
      appBar: AppBar(
        title: Text("About RoyalBank"),
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
            new Text("Royal Bank", style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),),
            new Center(
                child: new Image(
                  image: logo,
                  width: (screenSize.width < 500)
                      ? 200.0
                      : (screenSize.width / 6) + 12.0,
                  height: screenSize.height / 8 + 20,
                )
            ),
            SizedBox(height: 50.0,),
            new Container (
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0),
              width: screenSize.width*0.99,
              height: screenSize.height*0.45,
              //color: Colors.deepOrangeAccent,
              decoration: BoxDecoration(
                border: Border.all(width: 2.0,)
              ),
              child: new Column (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text ("RoyalBank, the primary subsidiary of RoyalBankCorp, ", textAlign: TextAlign.justify),
                  Text ("is a regional bank headquartered in Ontario, Canada, ", textAlign: TextAlign.justify),
                  Text ("and is the only major bank based in Canada. It is one", textAlign: TextAlign.justify),
                  Text ("of the largest banks in the United States. It's custom-", textAlign: TextAlign.justify,),
                  Text ("-er base spans retail, small business, corporate, and", textAlign: TextAlign.justify),
                  Text ("investment clients. It maintains 1,197 branches and ", textAlign: TextAlign.justify),
                  Text ("1,572 ATMs, which are in Alaska, Colorado, Delaware,", textAlign: TextAlign.justify),
                  Text ("Connecticut, Florida, Illinoisis, Indiana, Iowa, Maine,", textAlign: TextAlign.justify),
                  Text (" Marylandyard, Massachusetts, Michigan, Minnesota, ", textAlign: TextAlign.justify),
                  Text (" New Jersey, New York, Oregon, Washington, Virginia.", textAlign: TextAlign.justify),
                  Text ("RoyalBankCorp maintains business offices in 39 states.",textAlign: TextAlign.justify,),
                  Text ("", textAlign: TextAlign.left,)
                ],
              ),
            ),
            /*new Card(
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Royal Bank',
                      style: new TextStyle(color: Colors.purple, fontWeight: FontWeight.bold,fontSize: 14.0),
                    ),

                    /*
                    *", the primary subsidiary of RoyalBankCorp, is a regional bank\n"
                            "\n"
                            "\n"
                            "\n"
                            "\n"
                            "\n"
                            "\n"
                            "\n"
                            "\n"
                            "\n"
                            "offices in 39 states.\n"
                    * */

                    TextSpan(
                      children: ,
                      style: TextStyle(
                          fontSize: 12.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            )*/
          ],
        ),
      ),
    );
  }
}
