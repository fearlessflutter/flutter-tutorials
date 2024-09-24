import 'package:best_architecture/models/movie.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Image.network(movie.posterUrl, fit: BoxFit.cover),
    );
  }
}
