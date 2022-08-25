import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShadowBox extends StatelessWidget {
  const ShadowBox({Key? key,required this.height,required this.width,required this.child,required this.color,required this.shadowColor}) : super(key: key);
  final Widget child;
  final double height;
  final double width;
  final Color color;
  final Color shadowColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(4, 3), // changes position of shadow
            ),
          ],
        ),
      child:child
    );
  }
}
