import 'package:c2mealpha2/customWidgets/GlasContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GlasButton extends StatefulWidget {
  const GlasButton({Key? key, required this.callback, required this.icon})
      : super(key: key);

  final IconData icon;
  final VoidCallback callback;

  @override
  State<GlasButton> createState() => _GlasButtonState();
}

class _GlasButtonState extends State<GlasButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: GlasContainer(
          height: 50,
          width: 50,
          boxShadow: Colors.deepPurple.shade200,
          child: IconButton(
            onPressed: widget.callback,
            icon: FaIcon(widget.icon),color: Colors.deepPurple,focusColor: Colors.deepPurple.shade400,
          )),
    );
  }
}