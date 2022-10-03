import 'package:flutter/material.dart';

import '../../../../domain/entities/movie_entity.dart';
import 'text_tile_description.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTileDescription(
          text: 'Media: ${movie.mediaType}',
        ),
        TextTileDescription(
          text: 'Original title: ${movie.originalTitle}',
        ),
        TextTileDescription(
          text: 'Original language: ${movie.originalLanguage}',
        ),
        TextTileDescription(
          text: 'Approval: ${(movie.voteAverage * 10).toStringAsFixed(2)}%',
        ),
      ],
    );
  }
}
