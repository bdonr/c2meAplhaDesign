import 'package:c2mealpha2/customWidgets/LikeMessageOverlayWithTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CustomText.dart';
import 'GlasContainer.dart';
import 'InkWellWidget.dart';

class StoryTile extends StatefulWidget {
  const StoryTile(
      {Key? key,
      this.imageUrl = null,
      required this.followerCount,
      required this.messageCount,
      required this.title,
      required this.callback})
      : super(key: key);
  final String? imageUrl;
  final String followerCount;
  final String messageCount;
  final String title;
  final VoidCallback callback;

  @override
  State<StoryTile> createState() => _StoryTileState();
}

class _StoryTileState extends State<StoryTile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        InkWellWidget(
          callback: widget.callback,
          width: 300,
          height: 400,
          imageUrl: widget.imageUrl,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: LikeMessageOverlayWithTitle(
                  height: widget.imageUrl!=null?150:400,
                  flex: widget.imageUrl!=null?1:1,
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
