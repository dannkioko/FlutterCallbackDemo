import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  final Color topColor;
  TopContainer(this.topColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: topColor,
      child: Center(child: Text("Top Container")),
    );
  }
}
