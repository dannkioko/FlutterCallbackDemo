import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  final Color bottomColor;
  BottomContainer(this.bottomColor);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        color: bottomColor,
        child: Center(
          child: Text("Bottom Container"),
        ));
  }
}
