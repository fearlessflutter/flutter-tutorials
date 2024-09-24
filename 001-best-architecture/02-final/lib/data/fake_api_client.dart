import 'dart:math';

import 'package:best_architecture/data/api_client.dart';
import 'package:best_architecture/models/fake_data.dart';
import 'package:best_architecture/models/movie.dart';

class FakeApiClient extends ApiClient {
  @override
  Future<List<Movie>> getNowPlayingMovies() async {
    await Future.delayed(const Duration(seconds: 1));

    final random = Random().nextBool();
    if (random) {
      throw Exception('API failure');
    }
    return movies;
  }
}
