import 'package:flutter/material.dart';

class HelloWorld extends StatefulWidget {
  final callback;
  final Color topColor;
  HelloWorld(this.topColor, this.callback);
  @override
  _HelloWorldState createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  @override
  void initState() {
    print("Top init state");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.topColor == Colors.blue) {
          widget.callback(Colors.pink, Colors.blue);
        } else {
          widget.callback(Colors.blue, Colors.pink);
        }
      },
      child: Container(
        height: 100.0,
        color: widget.topColor,
        child: Center(child: Text("Top Container")),
      ),
    );
  }
}
