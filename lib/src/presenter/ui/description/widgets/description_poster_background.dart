import 'package:flutter/material.dart';

import '../../../../domain/entities/movie_entity.dart';

class DescriptionPosterBackground extends StatelessWidget {
  const DescriptionPosterBackground({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.network(
            'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
            fit: BoxFit.fill,
          ).image,
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 230,
        child: const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
              ],
              begin: Alignment.centerLeft,
              end: Alignment(4, 6),
            ),
          ),
        ),
      ),
    );
  }
}
