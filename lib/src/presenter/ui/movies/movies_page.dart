import 'package:flutter/material.dart';

import 'widgets/body_movies.dart';
import 'widgets/drawer_movies.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  bool opacity = false;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 300)).then((value) {
      setState(() {
        opacity = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 2),
      opacity: opacity ? 1 : 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          // backgroundColor: const Color.fromARGB(203, 54, 3, 63),
          backgroundColor: Theme.of(context).primaryColor,
          iconTheme: const IconThemeData(
            color: Colors.white60,
          ),
          title: const Text(
            'Trending Movies',
            style: TextStyle(
              color: Colors.white60,
            ),
          ),
        ),
        drawer: const DrawerMovies(),
        body: const BodyMovies(),
      ),
    );
  }
}
