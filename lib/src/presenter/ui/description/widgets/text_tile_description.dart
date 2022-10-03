import 'package:flutter/material.dart';

class TextTileDescription extends StatelessWidget {
  const TextTileDescription({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white60,
        fontSize: 20,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
