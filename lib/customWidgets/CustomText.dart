import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text,this.weight=FontWeight.w500,this.size=13,this.color=Colors.white}) : super(key: key);
  final String text;
  final FontWeight weight;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: color,
            fontSize: size,
            fontWeight: weight,
            decorationColor: Colors.transparent));
  }
}
