part of 'home_cubit.dart';

enum HomeStatus { loading, success, failure }

class HomeState extends Equatable {
  const HomeState({
    this.status = HomeStatus.loading,
    this.movies = const <Movie>[],
  });

  final HomeStatus status;
  final List<Movie> movies;

  bool get isLoading => status == HomeStatus.loading;

  bool get isSuccess => status == HomeStatus.success;

  bool get isFailure => status == HomeStatus.failure;

  HomeState copyWith({
    HomeStatus? status,
    List<Movie>? movies,
  }) {
    return HomeState(
      status: status ?? this.status,
      movies: movies ?? this.movies,
    );
  }

  @override
  List<Object> get props => [status, movies];
}
