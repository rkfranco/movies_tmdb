import 'package:flutter/material.dart';

import '../../../../domain/entities/movie_entity.dart';

class CardPorcentage extends StatelessWidget {
  const CardPorcentage({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10,
      bottom: -15,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 54, 3, 63),
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.0, end: movie.voteAverage / 10),
              duration: const Duration(seconds: 2),
              builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: CircularProgressIndicator(
                    value: value,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Colors.cyan,
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${(movie.voteAverage * 10).floor()}',
                style: TextStyle(
                  color: Colors.cyan.shade100,
                ),
              ),
              Text(
                '%',
                style: TextStyle(
                  color: Colors.cyan.shade100,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
