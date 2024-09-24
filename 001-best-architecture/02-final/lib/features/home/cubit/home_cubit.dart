import 'dart:developer';

import 'package:best_architecture/data/movies_repository.dart';
import 'package:best_architecture/models/movie.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(const HomeState());

  final MoviesRepository _repository;

  Future<void> init() async {
    try {
      final movies = await _repository.getMovies();
      emit(
        state.copyWith(
          status: HomeStatus.success,
          movies: movies,
        ),
      );
    } catch (e, st) {
      log('Failed to load movies', error: e, stackTrace: st);
      emit(state.copyWith(status: HomeStatus.failure));
    }
  }
}
