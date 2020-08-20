import 'package:flutter/material.dart';
import 'package:royalbank/screens/MakeDeposit/deposit_amount.dart';

class AccountScreen extends StatelessWidget {
  BuildContext context;
  ScrollController _scrollController= new ScrollController();

  var Names = ["John Smith", "David Jones", "Michael Johnson", "Chris Lee", "Mike Brown",
    "Mark Williams", "James Rodriguez", "Mark Garcia", "Paul Lopez", "Daniel Gonzalez",];
  var AccountNumbers= [37817174, 59438465, 33293765, 14768868, 31086664,
                      28041576, 62318067, 46929088, 56406556, 17674401];

  @override
  Widget build(BuildContext context) {
      final Size screenSize = MediaQuery.of(context).size;
      return Scaffold(
        appBar: AppBar(
          title: Text("Select An Account"),
          centerTitle: true,
          backgroundColor: Colors.red.shade500,
        ),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
                itemBuilder: (context, position) {
                  return Card(
                    elevation: 6.0,
                    child:  ListTile(
                      leading: Icon(Icons.person, color: Colors.red.shade400, size: 40.0,),
                      title: Text(Names[position]),
                      subtitle: Text(AccountNumbers[position].toString()),
                      trailing: Icon(Icons.chevron_right),
                      onTap:(){
                        //TODO : create var to hold account name & number
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context) =>
                            new DepositAmount())
                        );
                      },
                      dense: true,
                      contentPadding: const EdgeInsets.all(5.0),
                    ),
                  );
                },
                itemCount: Names.length,
              ),
        ),
      );
    }
  }

