import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/helpers/api_server_failure.dart';
import 'package:movie_app/helpers/custom_excption.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/services/api_service.dart';
import 'package:movie_app/utils/parse_data.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  final _apiService = ApiService();

  Future<List<MovieEntity>?> getAllMovies({int page = 1}) async {
    emit(HomeLoading());
    try {
      var data = await _apiService.getAllMovies(page: page);
      var movies = parseData(data);
      return movies;
    } on DioException catch (e) {
      throw ApiServerFailure.fromDioException(e);
    } catch (e) {
      throw CustomExcption(message: e.toString());
    }
  }
}
