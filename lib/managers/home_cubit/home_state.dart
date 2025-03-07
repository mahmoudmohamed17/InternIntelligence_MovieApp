part of 'home_cubit.dart';

class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  final List<MovieEntity> movies;

  HomeSuccess({required this.movies});
}

final class HomeFailed extends HomeState {
  final String message;

  HomeFailed({required this.message});
}
