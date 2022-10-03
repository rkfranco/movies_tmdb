import 'package:flutter/material.dart';

import '../../../../domain/entities/movie_entity.dart';

class DescriptionMoviePoster extends StatelessWidget {
  const DescriptionMoviePoster({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      left: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://image.tmdb.org/t/p/w500${movie.posterPath}',
          scale: 4,
        ),
      ),
    );
  }
}
