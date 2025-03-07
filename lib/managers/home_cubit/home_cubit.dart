import 'package:bloc/bloc.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/repos/home_repo_impl.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial()) {
    getAllMovies(page: 2);
  }
  final _homeRepo = HomeRepoImpl();
  List<MovieEntity> posterMovies = [];

  Future<void> getAllMovies({int page = 1}) async {
    emit(HomeLoading());
    var result = await _homeRepo.getAllMovies(page: page);
    result.fold(
      (failure) => emit(HomeFailed(message: failure.message)),
      (data) => emit(HomeSuccess(movies: data)),
    );
  }
}
