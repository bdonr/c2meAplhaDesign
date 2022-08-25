import 'package:c2mealpha2/customWidgets/GlasContainer.dart';
import 'package:c2mealpha2/customWidgets/ShadowBox.dart';
import 'package:c2mealpha2/imageButton/GlasButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../customWidgets/DescriptionRow.dart';
import '../customWidgets/top/TopButtonDesign.dart';

class ContentImage extends StatefulWidget {
  const ContentImage({Key? key}) : super(key: key);

  @override
  State<ContentImage> createState() => _ContentImageState();
}

class _ContentImageState extends State<ContentImage> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.transparent,
            child: Image.network(
                "https://thumbs.dreamstime.com/b/beautiful-woman-whiten-perfect-smile-outdoor-green-background-33801042.jpg",
                fit: BoxFit.fill),
          ),
          Positioned(
            top: 250,
            left: 4,
            child: GlasButton(
                callback: () => {}, icon: FontAwesomeIcons.heart),
          ),
          Positioned(
            top: 250,
            left: 70,
            child: GlasButton(
                callback: () => {}, icon: FontAwesomeIcons.pencil),
          ),
          Positioned(
            top: 240,
            left: 130,
            child: GlasContainer(
              height: 90,
              width: 300,
              boxShadow: Colors.transparent,
              child: Stack(children: [
                Positioned.fill(left:4,top:-60,child: DescriptionTextRow(description: 1000.toString(),text:"follower")),
                Positioned.fill(left:4,top:-30,child: DescriptionTextRow(description:1000.toString(),text: "follows",)),
                Positioned.fill(left:4,top:-0,child: DescriptionTextRow(description:4.toString(),text: "stories",)),
              ],),
            ),
          )
        ],
      ),
    );
  }
}
