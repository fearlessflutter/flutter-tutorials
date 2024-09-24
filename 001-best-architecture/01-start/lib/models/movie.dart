import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  const Movie({
    required this.id,
    required this.title,
    required this.posterPath,
  });

  final int id;
  final String title;
  final String posterPath;

  String get posterUrl => 'https://image.tmdb.org/t/p/w500$posterPath';

  @override
  List<Object?> get props => [id, title, posterPath];
}
