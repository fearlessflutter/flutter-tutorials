import 'package:best_architecture/data/api_client.dart';
import 'package:best_architecture/models/movie.dart';

class MoviesRepository {
  MoviesRepository({required this.apiClient});

  final ApiClient apiClient;

  Future<List<Movie>> getMovies() => apiClient.getNowPlayingMovies();
}
