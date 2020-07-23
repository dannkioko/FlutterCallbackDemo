import 'package:fluttercallbackdemo/bottomcontainer.dart';
import 'package:fluttercallbackdemo/topcontainer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color noClickColor = Colors.blue;
  Color clickColor = Colors.pink;
  int container;
  @override
  Widget build(BuildContext context) {
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
              GestureDetector(
                  onTap: () {
                    setState(() {
                      container = 0;
                    });
                  },
                  child: container == 0
                      ? TopContainer(clickColor)
                      : TopContainer(noClickColor)),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      container = 1;
                    });
                  },
                  child: container == 1
                      ? BottomContainer(clickColor)
                      : BottomContainer(noClickColor)),
            ],
          )),
    );
  }
}
