import 'package:flutter/material.dart';
import 'package:pet_project/model/movie.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final List<Movie> movies = generateMovies();
  final _searchTextController = TextEditingController();
  var _filteredMovies = <Movie>[];

  void searchMovie() {
    final query = _searchTextController.text;
    if (query.isNotEmpty) {
      _filteredMovies = movies.where((element) {
        return element.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = movies;
    }
    setState(() {});
  }

  void _onMovieTab(int index) {
    Navigator.of(context)
        .pushNamed('/movie_detail', arguments: movies[index].id);
  }

  @override
  void initState() {
    searchMovie();
    _filteredMovies = movies;
    // _searchTextController.addListener(searchMovie);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            padding: const EdgeInsets.only(top: 70),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: _filteredMovies.length,
            itemExtent: 163,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 10.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey.shade500),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8.0,
                              offset: const Offset(0.0, 2.0),
                            ),
                          ]),
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        children: [
                          Image.asset(
                            _filteredMovies[index].imageUrl,
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Text(
                                  _filteredMovies[index].title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  _filteredMovies[index].year,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  _filteredMovies[index].description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 5),
                        ],
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10.0),
                        onTap: () => _onMovieTab(index),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: TextField(
              controller: _searchTextController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withAlpha(238),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                border: const OutlineInputBorder(),
                hintText: 'Поиск',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
