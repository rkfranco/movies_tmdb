import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'src/presenter/ui/splash/splash_page.dart';

void main() {
  initializeDateFormatting('pt_BR');
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: const Color.fromARGB(203, 54, 3, 63),
      ),
      home: const SplashPage(),
    );
  }
}
