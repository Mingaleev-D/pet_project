import 'package:flutter/material.dart';
import 'package:pet_project/ui/auth/auth_page.dart';
import 'package:pet_project/ui/main_page.dart';
import 'package:pet_project/ui/details/movie_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.green,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      initialRoute: '/main',
      //  home: const Auth(),
      routes: {
        '/auth': (context) => const AuthPage(),
        '/main': (context) => const MainPage(),
        '/movie_detail': (context) {
          final movieId = ModalRoute.of(context)?.settings.arguments as int;
          if (movieId is int) {
            return MovieDetailPage(movieId: movieId);
          } else {
            return const SizedBox();
          }
        },
      },
    );
  }
}
