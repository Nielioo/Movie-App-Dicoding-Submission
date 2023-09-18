import 'package:flutter/material.dart';
import 'package:movie_app/views/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        // '/movieDetail': (context) => const MovieDetailPage(),
      },
    );
  }
}