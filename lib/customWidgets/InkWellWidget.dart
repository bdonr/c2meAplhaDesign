import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkWellWidget extends StatefulWidget {
  const InkWellWidget({Key? key, required this.width,required this.height, this.imageUrl = null,this.child=null}) : super(key: key);
  final String? imageUrl;
  final double width;
  final double height;
  final Widget? child;

  @override
  State<InkWellWidget> createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        child: widget.child,
        decoration: BoxDecoration(
          color: widget.imageUrl==null?Colors.white:null,
          image: widget.imageUrl != null
              ? DecorationImage(
                  image: NetworkImage(widget.imageUrl!), fit: BoxFit.fill)
              : null,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        height: widget.height,
        width: widget.width,
      ),
      Positioned.fill(
          child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
        ),
      )),
    ]);
  }
}
