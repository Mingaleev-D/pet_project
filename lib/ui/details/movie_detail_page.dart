import 'package:flutter/material.dart';
import 'package:pet_project/ui/details/widgets/details_info.dart';
import 'package:pet_project/ui/details/widgets/details_screen_cast.dart';

class MovieDetailPage extends StatefulWidget {
  final int movieId;
  const MovieDetailPage({super.key, required this.movieId});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie detail: ${widget.movieId}'),
      ),
      body: ListView(
        children: const [
          DetailsInfo(),
          DetailsScreenCast(),
        ],
      ),
    );
  }
}
