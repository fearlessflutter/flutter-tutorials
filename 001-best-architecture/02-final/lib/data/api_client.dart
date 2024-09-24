import 'package:best_architecture/models/movie.dart';

abstract class ApiClient {
  Future<List<Movie>> getNowPlayingMovies();
}
