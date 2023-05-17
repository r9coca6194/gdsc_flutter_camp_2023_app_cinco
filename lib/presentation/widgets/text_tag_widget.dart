import 'package:flutter/material.dart';

class TextTagWidget extends StatelessWidget {
  final String text;

  const TextTagWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(left: 8.0, top: 0.0, right: 0.0, bottom: 8.0),
      padding:
          const EdgeInsets.only(left: 8.0, top: 4.0, right: 8.0, bottom: 4.0),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
      ),
    );
  }
}
