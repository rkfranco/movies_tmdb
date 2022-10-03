import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimer extends StatelessWidget {
  const CustomShimer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).primaryColor,
      highlightColor: Colors.cyan,
      enabled: true,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 300,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
