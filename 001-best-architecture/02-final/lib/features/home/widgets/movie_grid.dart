import 'package:best_architecture/features/home/widgets/movie_card.dart';
import 'package:best_architecture/models/movie.dart';
import 'package:flutter/material.dart';

class MovieGrid extends StatelessWidget {
  const MovieGrid({required this.movies, super.key});

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: movies.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: MovieCard(movie: movies[index]),
      ),
    );
  }
}
