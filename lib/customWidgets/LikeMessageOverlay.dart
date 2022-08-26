import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CustomText.dart';
import 'GlasContainer.dart';

class LikeMessageOverlay extends StatefulWidget {
  const LikeMessageOverlay(
      {Key? key,
      required this.messageCount,
      required this.followerCount,
      this.glassColor = Colors.black87,
      this.boxShadow = Colors.black87,
      required this.title})
      : super(key: key);
  final String messageCount;
  final String followerCount;
  final Color glassColor;
  final Color boxShadow;
  final String title;

  @override
  State<LikeMessageOverlay> createState() => _LikeMessageOverlayState();
}

class _LikeMessageOverlayState extends State<LikeMessageOverlay> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: GlasContainer(
            width: 300,
            height: 140,
            glassColor: widget.glassColor,
            boxShadow: widget.boxShadow,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    FaIcon(FontAwesomeIcons.heart, color: Colors.deepPurple),
                    CustomText(
                      text: widget.followerCount,
                      color: Colors.white,
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Column(
                  children: [
                    FaIcon(FontAwesomeIcons.message, color: Colors.deepPurple),
                    CustomText(
                      text: widget.messageCount,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
