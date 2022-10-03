import 'package:flutter/material.dart';

import '../../../../domain/entities/movie_entity.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Text(
      movie.overview,
      style: const TextStyle(
        color: Colors.white60,
        fontSize: 20,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
