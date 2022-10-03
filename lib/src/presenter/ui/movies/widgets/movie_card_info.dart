import 'package:flutter/material.dart';

import '../../../../domain/entities/movie_entity.dart';
import '../../../../shared/utils/date_format.dart';

class MovieCardInfo extends StatelessWidget {
  const MovieCardInfo({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movie.title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            dateFormat(movie.releaseDate),
            style: const TextStyle(
              color: Color.fromARGB(142, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
