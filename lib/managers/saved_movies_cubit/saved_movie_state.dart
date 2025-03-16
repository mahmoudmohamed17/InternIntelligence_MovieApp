part of 'saved_movie_cubit.dart';

class SavedMovieState {}

final class SavedMovieInitial extends SavedMovieState {}

final class SavedMovieSuccess extends SavedMovieState {
  final List<MovieEntity> movies;

  SavedMovieSuccess({required this.movies});
}
