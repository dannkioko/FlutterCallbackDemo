import 'package:flutter/material.dart';

class BottomWorld extends StatefulWidget {
  final callback;
  final Color bottom;
  BottomWorld(this.bottom, this.callback);
  @override
  _BottomWorldState createState() => _BottomWorldState();
}

class _BottomWorldState extends State<BottomWorld> {
  @override
  void initState() {
    print("Bottom init state");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.bottom == Colors.blue) {
            widget.callback(Colors.blue, Colors.pink);
          } else {
            widget.callback(Colors.pink, Colors.blue);
          }
        });
      },
      child: Container(
          height: 100.0,
          color: widget.bottom,
          child: Center(
            child: Text("Bottom Container"),
          )),
    );
  }
}
