import 'package:bloc/bloc.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/repos/home_repo_impl.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial()) {
    getAllMovies();
  }
  final _homeRepo = HomeRepoImpl();

  Future<void> getAllMovies() async {
    emit(HomeLoading());
    var result = await _homeRepo.getAllMovies();
    result.fold(
      (failure) => emit(HomeFailed(message: failure.message)),
      (data) => emit(HomeSuccess(movies: data)),
    );
  }
}
