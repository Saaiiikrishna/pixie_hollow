import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 100,
        decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    );
  }
}
