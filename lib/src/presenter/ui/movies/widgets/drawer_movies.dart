import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../riverpod/movies/movies_provider.dart';

class DrawerMovies extends HookConsumerWidget {
  const DrawerMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void newRequest(String timeWindow) {
      // Já que vai ter que chamar um método é melhor usar o read
      // .notifier para avisar que houve mudança no estado do provider
      ref
          .read(moviesNotifierProvider.notifier)
          .getAllTrendingMovies(timeWindow);
    }

    const color = Colors.white60;
    return Drawer(
      backgroundColor: color,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AnimatedRotation(
                  duration: Duration(seconds: 3),
                  turns: 5.0,
                  curve: Curves.bounceInOut,
                  child: Icon(
                    Icons.movie_rounded,
                    size: 75,
                    color: color,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Select the desired time window',
                  style: TextStyle(
                    color: color,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Bring daily trending movies',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            onTap: () {
              newRequest('day');
              Navigator.of(context).pop();
              // ? O pop tira um item da pilha no caso a page (Drawer)
            },
          ),
          const Divider(
            height: 5,
            thickness: 2,
          ),
          ListTile(
            title: const Text(
              'Bring weekly trending movies',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            onTap: () {
              newRequest('week');
              Navigator.of(context).pop();
            },
          ),
          const Divider(
            height: 5,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
