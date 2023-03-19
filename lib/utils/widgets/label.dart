import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final Widget? child;
  final double? radius;
  final double? padding;
  final double? height;
  const Label({Key? key, this.child, this.radius, this.height, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding!, bottom: 12),
      child: Container(
        height: height,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(radius!),
                bottomRight: Radius.circular(radius!))),
        child: child,
      ),
    );
  }
}
