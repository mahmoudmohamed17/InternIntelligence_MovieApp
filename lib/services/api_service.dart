import 'package:dio/dio.dart';
import 'package:movie_app/helpers/app_strings.dart';

class ApiService {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3/'));

  // ApiService() {
  //   dio.interceptors.add(DioInterceptor());
  // }

  Future<Map<String, dynamic>> getAllMovies({int page = 1}) async {
    var response = await dio.get(
      'discover/movie?api_key=${AppStrings.myApiKey}&page=$page',
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getMoviesWithType({required int id, int page = 1}) async {
    var response = await dio.get(
      'discover/movie?api_key=${AppStrings.myApiKey}&with_genres=$id&page=$page',
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getMovieTrailer({required int id}) async {
    var response = await dio.get(
      'movie/$id/videos?api_key=${AppStrings.myApiKey}',
    );
    return response.data;
  }
}
