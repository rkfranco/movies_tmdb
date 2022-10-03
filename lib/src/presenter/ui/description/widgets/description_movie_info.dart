import 'package:flutter/material.dart';

import '../../../../domain/entities/movie_entity.dart';
import 'movie_description.dart';
import 'movie_info.dart';

class DescriptionMovieInfo extends StatelessWidget {
  const DescriptionMovieInfo({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Description',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 10),
          MovieDescription(movie: movie),
          const Divider(
            color: Colors.white,
            thickness: 1,
          ),
          MovieInfo(movie: movie),
        ],
      ),
    );
  }
}
