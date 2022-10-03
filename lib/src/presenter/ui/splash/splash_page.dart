import 'package:flutter/material.dart';

import '../movies/movies_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool opacity = false;
  bool fade = false;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((value) {
      setState(() {
        opacity = true;
      });
    });
    Future.delayed(const Duration(seconds: 3)).then((value) {
      setState(() {
        fade = true;
      });
    });
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return const MoviesPage();
          },
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        duration: const Duration(seconds: 2),
        opacity: fade ? 0 : 1,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ColoredBox(
            color: const Color.fromARGB(203, 54, 3, 63),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: opacity ? 1 : 0,
              child: const Icon(
                Icons.movie_creation_sharp,
                color: Colors.white,
                size: 120,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
