import 'package:flutter/material.dart';

class CustomCardIcon extends StatelessWidget {
  const CustomCardIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 15,
      right: 15,
      child: CircleAvatar(
        radius: 13,
        backgroundColor: Color.fromARGB(123, 255, 255, 255),
        child: Icon(
          Icons.more_horiz,
          color: Color.fromARGB(103, 0, 0, 0),
        ),
      ),
    );
  }
}
