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
          selectedCategory: 'All',
        ),
      ) {
    getAllMovies();
  }
  final _homeRepo = HomeRepoImpl();

  Future<void> getAllMovies({int? categoryId}) async {
    emit(
      state.copyWith(
        status: HomeStatus.loading,
        selectedCategory: categoryId == null ? 'All' : movieType[categoryId],
      ),
    );
    var result = await _homeRepo.getAllMovies(id: categoryId);
    result.fold(
      (failure) => emit(state.copyWith(status: HomeStatus.failed)),
      (movies) =>
          emit(state.copyWith(status: HomeStatus.success, movies: movies)),
    );
  }
}
