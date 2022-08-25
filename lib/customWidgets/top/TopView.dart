import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'TopButtonDesign.dart';

class TopView extends StatefulWidget {
  const TopView({Key? key,required this.scaffoldKey}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;
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
          const Padding(padding: EdgeInsets.only(left: 5)),
          Container(
            height: 40,
            child: TopButtonDesign(
              callback: () => {widget.scaffoldKey.currentState?.openDrawer()},
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
              const Padding(padding: EdgeInsets.only(left: 20)),
              TopButtonDesign(
                  callback: () => {}, icon: FontAwesomeIcons.bell),
              const Padding(padding: EdgeInsets.only(left: 20)),
              TopButtonDesign(
                  callback: () => {}, icon: FontAwesomeIcons.message),
              const Padding(padding: EdgeInsets.only(right: 5)),
            ],
          ),
        )
      ],
    );
  }
}
