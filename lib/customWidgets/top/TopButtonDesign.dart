import 'package:c2mealpha2/customWidgets/ShadowBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopButtonDesign extends StatefulWidget {
  const TopButtonDesign({Key? key, required this.callback, required this.icon})
      : super(key: key);

  final IconData icon;
  final VoidCallback callback;

  @override
  State<TopButtonDesign> createState() => _TopButtonDesignState();
}

class _TopButtonDesignState extends State<TopButtonDesign> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ShadowBox(
          height: 50,
          width: 50,
          shadowColor: Colors.deepPurple.shade200,
          color: Colors.white,
          child: IconButton(
            onPressed: widget.callback,
            icon: FaIcon(widget.icon),color: Colors.deepPurple,focusColor: Colors.deepPurple.shade400,
          )),
    );
  }
}
