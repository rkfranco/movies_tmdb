import 'package:flutter/material.dart';

import '../../../../domain/entities/movie_entity.dart';
import 'description_movie_info.dart';
import 'description_movie_poster.dart';
import 'description_poster_background.dart';

class DescriptionBody extends StatelessWidget {
  const DescriptionBody({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              DescriptionPosterBackground(movie: movie),
              DescriptionMoviePoster(movie: movie),
            ],
          ),
          DescriptionMovieInfo(movie: movie),
        ],
      ),
    );
  }
}
