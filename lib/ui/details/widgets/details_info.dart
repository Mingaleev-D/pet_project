import 'package:flutter/material.dart';

class DetailsInfo extends StatelessWidget {
  const DetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopPoster(),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: _MovieNamed(),
        ),
        Score(),
        Summery(),
        Text('Обзор'),
        Text('Какое то описание'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('Name actor'),
                Text('Name director'),
              ],
            ),
            Column(
              children: [
                Text('Name actor'),
                Text('Name director'),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('Name actor'),
                Text('Name director'),
              ],
            ),
            Column(
              children: [
                Text('Name actor'),
                Text('Name director'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class TopPoster extends StatelessWidget {
  const TopPoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/flutter_logo.png'),
        // Positioned(
        //   top: 20,
        //   left: 20,
        //   bottom: 20,
        //   child: Image.asset(
        //     'assets/flutter_app.png',
        //     height: 300,
        //     width: 200,
        //   ),
        // ),
      ],
    );
  }
}

class _MovieNamed extends StatelessWidget {
  const _MovieNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 2,
      textAlign: TextAlign.center,
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Movie name: ',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
          TextSpan(
            text: 'The Last Jedi',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}

class Summery extends StatelessWidget {
  const Summery({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Demo text',
      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      maxLines: 1,
    );
  }
}

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Рейтинг'),
        Text('Трейлер'),
      ],
    );
  }
}
