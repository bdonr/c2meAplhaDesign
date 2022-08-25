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
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurple.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(4, 3), // changes position of shadow
              ),
            ],
          ),
          child: IconButton(
            onPressed: widget.callback,
            icon: FaIcon(widget.icon),color: Colors.deepPurple,
          )),
    );
  }
}
