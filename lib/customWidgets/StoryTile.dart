import 'package:c2mealpha2/customWidgets/LikeMessageOverlay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CustomText.dart';
import 'GlasContainer.dart';

class StoryTile extends StatefulWidget {
  const StoryTile(
      {Key? key,
      required this.imageUrl,
      required this.followerCount,
      required this.messageCount,required this.title})
      : super(key: key);
  final String imageUrl;
  final String followerCount;
  final String messageCount;
  final String title;

  @override
  State<StoryTile> createState() => _StoryTileState();
}

class _StoryTileState extends State<StoryTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
              alignment: Alignment(-.2, 0),
              image: NetworkImage(widget.imageUrl),
              fit: BoxFit.cover),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Text(widget.title),
            Expanded(
              flex: 1,
              child: LikeMessageOverlay(
                  messageCount: widget.messageCount,
                  followerCount: widget.followerCount,glassColor: Colors.black,),
            ),
          ],
        ));
  }
}
