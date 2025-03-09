import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/repos/home_repo_impl.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
    : super(
        HomeState(
          status: HomeStatus.loading,
          movies: [],
          selectedCategory: 'Action',
        ),
      ) {
    getAllMovies(id: 28);
  }
  final _homeRepo = HomeRepoImpl();

  Future<void> getAllMovies({required int id}) async {
    emit(
      state.copyWith(
        status: HomeStatus.loading,
        selectedCategory: genresMap[id],
      ),
    );
    var result = await _homeRepo.getAllMovies(id: id);
    log('Loading data for ${genresMap[id]}...');
    result.fold(
      (failure) {
        log('The error: ${failure.message}');
        emit(state.copyWith(status: HomeStatus.failed));
      },
      (movies) =>
          emit(state.copyWith(status: HomeStatus.success, movies: movies)),
    );
  }
}
