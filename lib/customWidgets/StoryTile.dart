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
      required this.messageCount})
      : super(key: key);
  final String imageUrl;
  final String followerCount;
  final String messageCount;

  @override
  State<StoryTile> createState() => _StoryTileState();
}

class _StoryTileState extends State<StoryTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment(-.2, 0),
              image: NetworkImage(widget.imageUrl),
              fit: BoxFit.cover),
          color: Colors.white,
        ),
        child: LikeMessageOverlay(
            messageCount: widget.messageCount,
            followerCount: widget.followerCount,glassColor: Colors.black,));
  }
}
