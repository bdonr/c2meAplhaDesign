import 'package:flutter/cupertino.dart';

import 'CustomText.dart';


class DescriptionTextRow extends StatelessWidget {
  const DescriptionTextRow(
      {Key? key, required this.description, required this.text})
      : super(key: key);
  final String description;
  final String text;

  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children:[

      Flexible(flex:3,child: CustomText(text: description+":")),
      Flexible(flex:7,child: CustomText(text: text)),
    ]);
  }
}
