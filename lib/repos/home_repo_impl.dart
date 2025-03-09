import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/helpers/api_server_failure.dart';
import 'package:movie_app/helpers/failure.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/repos/home_repo.dart';
import 'package:movie_app/services/api_service.dart';
import 'package:movie_app/utils/parse_data.dart';

class HomeRepoImpl extends HomeRepo {
  final _apiService = ApiService();

  @override
  Future<Either<Failure, List<MovieEntity>>> getAllMovies({int id = 1}) async {
    try {
      var data = await _apiService.getAllMovies(id: id);
      var result = parseData(data);
      return right(result);
    } on DioException catch (e) {
      return left(ApiServerFailure.fromDioException(e));
    } catch (e) {
      log('From HomeRepoImpl catch body');
      return left(Failure(message: e.toString()));
    }
  }
}
