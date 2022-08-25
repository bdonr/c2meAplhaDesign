import 'package:flutter/cupertino.dart';

import 'CustomText.dart';

class DescriptionTextRow extends StatelessWidget {
  const DescriptionTextRow(
      {Key? key, required this.description, required this.text})
      : super(key: key);
  final String description;
  final String text;

  Widget build(BuildContext context) {
    return Row(children: [
      CustomText(text: description),
      const Padding(padding: EdgeInsets.only(left: 4)),
      Expanded(child: CustomText(text: text)),
    ]);
  }
}
