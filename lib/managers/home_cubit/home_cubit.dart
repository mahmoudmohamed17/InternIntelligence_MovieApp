import 'package:bloc/bloc.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/repos/home_repo_impl.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({int page = 1, int? id}) : super(HomeInitial()) {
    getAllMovies(page: page, id: id);
  }
  final _homeRepo = HomeRepoImpl();

  Future<void> getAllMovies({int page = 1, int? id}) async {
    emit(HomeLoading());
    var result = await _homeRepo.getAllMovies(page: page, id: id);
    result.fold(
      (failure) => emit(HomeFailed(message: failure.message)),
      (data) => emit(HomeSuccess(movies: data)),
    );
  }
}
