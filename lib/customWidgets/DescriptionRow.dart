import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomText.dart';

class DescriptionTextRow extends StatelessWidget {
  const DescriptionTextRow(
      {Key? key, required this.description, required this.text})
      : super(key: key);
  final String description;
  final String text;

  Widget build(BuildContext context) {
    return CustomText(text: description + ":\t" + text,color: Colors.deepPurple,weight: FontWeight.bold,);
  }
}
