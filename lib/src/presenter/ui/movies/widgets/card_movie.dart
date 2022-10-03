import 'package:flutter/material.dart';

import '../../../../domain/entities/movie_entity.dart';
import 'card_porcentage.dart';
import 'custom_card_icon.dart';
import 'movie_card_info.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          // Clip behavior none permite que as coisas aumentem o tamanho do Stack conforme posicionadas
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://image.tmdb.org/t/p/w300${movie.posterPath}',
              ),
            ),
            CardPorcentage(movie: movie),
            const CustomCardIcon(),
          ],
        ),
        MovieCardInfo(movie: movie),
      ],
    );
  }
}
