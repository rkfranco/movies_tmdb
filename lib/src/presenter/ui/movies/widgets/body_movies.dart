import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../riverpod/movies/movies_provider.dart';
import 'movies_grid_view.dart';
import 'shimmer_widget.dart';

class BodyMovies extends HookConsumerWidget {
  const BodyMovies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final movies = ref.watch(moviesNotifierProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Visibility(
        visible: movies.isNotEmpty,
        replacement: const CustomShimer(),
        child: MoviesGridView(movies: movies),
      ),
    );
  }
}
