import 'package:c2mealpha2/customWidgets/LikeMessageOverlayWithTitle.dart';
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
      required this.messageCount,
      required this.title})
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
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.imageUrl), fit: BoxFit.fill),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          height: 400,
          width: 300,
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
            ),
          ),
        ),
        Positioned.fill(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: LikeMessageOverlayWithTitle(
                  title: widget.title,
                  messageCount: widget.messageCount,
                  followerCount: widget.followerCount,
                  glassColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
