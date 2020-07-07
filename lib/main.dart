import 'package:fluttercallbackdemo/bottomcontainer.dart';
import 'package:fluttercallbackdemo/topcontainer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color topColor = Colors.blue;
  Color bottomColor = Colors.pink;
  @override
  Widget build(BuildContext context) {
    void callback(Color colorA, Color colorB) {
      setState(() {
        topColor = colorA;
        bottomColor = colorB;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Trial App",
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Trial"),
          ),
          body: Column(
            children: <Widget>[
              HelloWorld(topColor, callback),
              BottomWorld(bottomColor, callback),
            ],
          )),
    );
  }
}
