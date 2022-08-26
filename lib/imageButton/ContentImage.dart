import 'package:c2mealpha2/customWidgets/CustomText.dart';
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
              child: Column(
                children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin:EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            CustomText(text: 100.toString(),size: 17,weight: FontWeight.bold),
                            CustomText(text: "follower",size: 20,weight: FontWeight.bold),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            CustomText(text: 4.toString(),size: 17,weight: FontWeight.bold),
                            CustomText(text: "follows",size: 20,weight: FontWeight.bold),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            CustomText(text: 10.toString()+"k",size: 17,weight: FontWeight.bold),
                            CustomText(text: "stories",size: 20,weight: FontWeight.bold),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],),
            ),
          )
        ],
      ),
    );
  }
}
