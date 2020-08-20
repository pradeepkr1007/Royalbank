import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';

class CameraMLVision extends StatefulWidget {
  @override
  _CameraMLVisionState createState() => _CameraMLVisionState();
}

class _CameraMLVisionState extends State<CameraMLVision> {
  String _name,_age ;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick Cheques Images"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16.0,right: 16.0,top:30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50.0,
              margin: const EdgeInsets.only(left: 110.0),
              child: RaisedButton(
                color: Colors.green,
                elevation: 2.0,
                child: Text('Pick an image' , style: TextStyle(color: Colors.white),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ImagePage();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  File pickedImage ;
  bool isImagePicked = false ;
  List <String> words = [];
  String _textData ;

  @override
  void initState()  {
    super.initState();
    pickImageNow();
  }

  void pickImageNow()async{
    await pickImage();

  }

  Future pickImage()async {
    var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      pickedImage = tempStore ;
      isImagePicked = true ;
      _textData = "";
      words.clear();
    });


  }
  Future readText() async {
    FirebaseVisionImage ourImage = FirebaseVisionImage.fromFile(pickedImage);
    TextRecognizer recognizeText = FirebaseVision.instance.textRecognizer();
    VisionText readText = await recognizeText.processImage(ourImage);
    for (TextBlock block in readText.blocks){
      for (TextLine line in block.lines){
        for (TextElement word in line.elements){
          words.add(word.text);
        }
      }
    }
    if(words.length > 0) {
      return words;
    }
    else return "Either no text or cannot detect" ;
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Your picked image'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            isImagePicked ?
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 18.0,left: 10.0,right: 10.0,bottom: 10.0),
                height: 400.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: FileImage(pickedImage),fit: BoxFit.fitWidth
                    )
                ),
              ),
            ) : Center(child: Container(
              child: Text('No image selected yet !'),
            )),
            isImagePicked ?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: ()async{
                    setState(() {
                      _textData = "";
                      words.clear();
                    });
                    await pickImage();},
                  child: Text('Pick another image ',style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                ),
              ],
            ):
            Container(),
            FutureBuilder(
              future: readText(),
              builder: (context,snapshot){
                _textData = snapshot.data.toString() ;
                if(!snapshot.hasData) return Center(child: CircularProgressIndicator(),);
                return Container(
                  margin: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                  child: Text(
                    _textData,
                    style: TextStyle(
                        fontSize: 20.0
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}


