import 'package:bloc/bloc.dart';
import 'package:movie_app/helpers/movie_entity.dart';
part 'saved_movie_state.dart';

class SavedMovieCubit extends Cubit<SavedMovieState> {
  SavedMovieCubit() : super(SavedMovieInitial());

  List<MovieEntity> movies = [];

  void addToSaved(MovieEntity movie) {
    movies.add(movie);
    emitState();
  }

  void removeFromSaved(MovieEntity movie) {
    movies.remove(movie);
    emitState();
  }

  emitState() {
    if (movies.isEmpty) {
      emit(SavedMovieInitial());
    } else {
      emit(SavedMovieSuccess(movies: List.unmodifiable(movies)));
    }
  }
}
