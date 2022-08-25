import 'package:c2mealpha2/customWidgets/ShadowBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'DescriptionRow.dart';
import 'customWidgets/top/TopButtonDesign.dart';

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
            child: TopButtonDesign(
                callback: () => {}, icon: FontAwesomeIcons.heart),
          ),
          Positioned(
            top: 250,
            left: 70,
            child: TopButtonDesign(
                callback: () => {}, icon: FontAwesomeIcons.pencil),
          ),
          Positioned(
            top: 250,
            left: 150,
            child: ShadowBox(
              height: 70,
              width: 250,
              color: Colors.transparent,
              shadowColor: Colors.deepPurple.shade100,
              child: Row(children: [
                Expanded(child: DescriptionTextRow(description: 1000.toString(),text:"follower")),
                Padding(padding: EdgeInsets.only(left: 10)),
                Expanded(child: DescriptionTextRow(description: "follows",text:1000.toString())),
                Expanded(child: DescriptionTextRow(description: "stories", text:4.toString())),
              ],),
            ),
          )
        ],
      ),
    );
  }
}
