import 'package:flutter/material.dart';

import '../../../domain/entities/movie_entity.dart';
import 'widgets/description_body.dart';

class DescriptionPage extends StatelessWidget {
  final MovieEntity movie;

  const DescriptionPage({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: const IconThemeData(
          color: Colors.white60,
        ),
        title: Text(
          movie.title,
          style: const TextStyle(
            color: Colors.white60,
          ),
        ),
      ),
      body: DescriptionBody(movie: movie),
    );
  }
}
