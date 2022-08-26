import 'package:c2mealpha2/customWidgets/CustomText.dart';
import 'package:c2mealpha2/customWidgets/GlasContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../DescriptionRow.dart';

class CustomDescriptionSliver extends StatefulWidget {
  const CustomDescriptionSliver({Key? key}) : super(key: key);

  @override
  State<CustomDescriptionSliver> createState() =>
      _CustomDescriptionSliverState();
}

class _CustomDescriptionSliverState extends State<CustomDescriptionSliver> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: GlasContainer(
      height: 150,
      width: double.infinity,
      boxShadow: Colors.deepPurple.withOpacity(1),
      blur: 900,
      spread: 0,
      glassColor: Colors.white,
      opacity: 0.2,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                CustomText(text:"About me",weight: FontWeight.bold,size: 20,),
                CustomText(text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis turpis odio, dapibus ac semper eget, tincidunt at quam. Sed tincidunt pretium feugiat. Nunc dolor.",weight: FontWeight.bold,size: 12,),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: Column(
              children: [
                CustomText(text:"single",weight: FontWeight.bold,size: 20,),
                CustomText(text:"yes"),
              ],
            ),
          ),
          Column(
            children: [
              CustomText(text:"gender",weight: FontWeight.bold,size: 20,),
              CustomText(text: "female"),
            ],
          ),
        ],
      ),
    ));
  }
}
