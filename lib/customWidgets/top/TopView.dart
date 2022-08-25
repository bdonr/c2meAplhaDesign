import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'TopButtonDesign.dart';

class TopView extends StatefulWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  State<TopView> createState() => _TopViewState();
}

class _TopViewState extends State<TopView> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Colors.white,
      leading: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 5)),
          Container(
            height: 40,
            child: TopButtonDesign(
              callback: () => {},
              icon: FontAwesomeIcons.bars,
            ),
          ),
        ],
      ),
      actions: [
        Container(
          height: 20,
          child: Row(
            children: [
              TopButtonDesign(
                  callback: () => {}, icon: FontAwesomeIcons.heart),
              Padding(padding: EdgeInsets.only(left: 20)),
              TopButtonDesign(
                  callback: () => {}, icon: FontAwesomeIcons.bell),
              Padding(padding: EdgeInsets.only(left: 20)),
              TopButtonDesign(
                  callback: () => {}, icon: FontAwesomeIcons.message),
              Padding(padding: EdgeInsets.only(right: 5)),
            ],
          ),
        )
      ],
    );
  }
}
