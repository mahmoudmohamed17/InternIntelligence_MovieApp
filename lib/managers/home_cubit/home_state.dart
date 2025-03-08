part of 'home_cubit.dart';

enum HomeStatus { loading, success, failed }

class HomeState {
  final HomeStatus status;
  final List<MovieEntity> movies;
  final String selectedCategory;

  HomeState({
    required this.status,
    required this.movies,
    required this.selectedCategory,
  });

  HomeState copyWith({
    HomeStatus? status,
    List<MovieEntity>? movies,
    String? selectedCategory,
  }) => HomeState(
    status: status ?? this.status,
    movies: movies ?? this.movies,
    selectedCategory: selectedCategory ?? this.selectedCategory,
  );
}
