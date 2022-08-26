import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CustomText.dart';
import 'GlasContainer.dart';

class LikeMessageOverlayWithTitle extends StatefulWidget {
  const LikeMessageOverlayWithTitle({Key? key, required this.messageCount,required this.followerCount, this.glassColor=Colors.black87,this.boxShadow=Colors.black87,required this.title}) : super(key: key);
  final String messageCount;
  final String followerCount;
  final Color glassColor;
  final Color boxShadow;
  final String title;
  @override
  State<LikeMessageOverlayWithTitle> createState() => _LikeMessageOverlayWithTitleState();
}

class _LikeMessageOverlayWithTitleState extends State<LikeMessageOverlayWithTitle> {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: CustomText(text:
                          widget.title,weight: FontWeight.bold,size: 12,),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          FaIcon(FontAwesomeIcons.heart,color: Colors.deepPurple),
                          CustomText(text:widget.followerCount,color: Colors.white,)
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Column(
                        children: [
                          FaIcon(FontAwesomeIcons.message,color: Colors.deepPurple),
                          CustomText(text:widget.messageCount,color: Colors.white,)
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
