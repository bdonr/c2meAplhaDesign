import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Text(text,textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.black54, fontSize: 13,fontWeight: FontWeight.w800,backgroundColor: Colors.transparent)),
    );
  }
}
