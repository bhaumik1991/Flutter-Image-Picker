import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String imageLink;
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[

              SizedBox(height: 64,), //just for spacing

              imageLink != null ?
              CircleAvatar(
                child: ClipOval(
                  child: Image.network(imageLink),
                ),
                radius: 100,
              ):

              CircleAvatar(
                child: ClipOval(
                  child: Icon(Icons.person, size: 100,),
                ),
                radius: 100,
              ),

              SizedBox(height: 16,),//just for spacing

              // ignore: deprecated_member_use
              FlatButton(
                child: Text("Change Image"),
                onPressed: ()async{

                },
                color: Colors.green,
                textColor: Colors.white,
              )
            ],
          ),
        )
    );
  }
}
