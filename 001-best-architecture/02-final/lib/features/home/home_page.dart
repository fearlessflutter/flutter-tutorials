import 'package:best_architecture/data/fake_api_client.dart';
import 'package:best_architecture/data/movies_repository.dart';
import 'package:best_architecture/features/home/cubit/home_cubit.dart';
import 'package:best_architecture/features/home/widgets/centered_message.dart';
import 'package:best_architecture/features/home/widgets/loading_indicator.dart';
import 'package:best_architecture/features/home/widgets/movie_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          HomeCubit(MoviesRepository(apiClient: FakeApiClient()))..init(),
      child: const _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const LoadingIndicator();
          }

          if (state.isFailure) {
            return const CenteredMessage.genericError();
          }

          if (state.movies.isEmpty) {
            return const CenteredMessage('There are no movies');
          }

          return MovieGrid(movies: state.movies);
        },
      ),
    );
  }
}
