import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlasContainer extends StatefulWidget {
  const GlasContainer({Key? key,required this.child,required this.height,required this.width,required this.boxShadow,this.blur=10,this.spread=1,this.glassColor=Colors.white,this.opacity=0.1}) : super(key: key);
  final Widget child;
  final double height;
  final double width;
  final Color boxShadow;
  final double? blur;
  final double? spread;
  final Color? glassColor;
  final double? opacity;
  @override
  State<GlasContainer> createState() => _GlasContainerState();
}

class _GlasContainerState extends State<GlasContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white10.withAlpha(100)),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: widget.boxShadow.withAlpha(100),
              blurRadius: widget.blur!,
              spreadRadius: widget.spread!,
            )
          ],
        color: widget.glassColor?.withOpacity(widget.opacity!),
      ),

      child: widget.child,
    );
  }
}
