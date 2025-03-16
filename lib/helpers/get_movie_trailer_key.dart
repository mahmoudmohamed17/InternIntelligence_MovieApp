import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/helpers/parse_movie_trailer_data.dart';
import 'package:movie_app/services/api_service.dart';

Future<void> getMovieTrailerKey(MovieEntity movie) async {
  final apiService = ApiService();
  var data = await apiService.getMovieTrailer(id: movie.movieId);
  movie.trailerKey = parseMovieTrailerData(data);
}
