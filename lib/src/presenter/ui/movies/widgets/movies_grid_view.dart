import 'package:flutter/material.dart';

import '../../../../domain/entities/movie_entity.dart';
import '../../description/description_page.dart';
import 'card_movie.dart';

class MoviesGridView extends StatelessWidget {
  const MoviesGridView({
    Key? key,
    required this.movies,
  }) : super(key: key);

  final List<MovieEntity> movies;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: screenWidth < 500 ? 2 : screenWidth ~/ 200,
        childAspectRatio: 0.5,
        crossAxisSpacing: 10,
      ),
      itemCount: movies.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    DescriptionPage(
                  movie: movies[index],
                ),
              ),
            );
          },
          child: CardMovie(movie: movies[index]),
        );
      },
    );
  }
}
