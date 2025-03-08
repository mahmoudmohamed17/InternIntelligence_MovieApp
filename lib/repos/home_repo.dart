import 'package:dartz/dartz.dart';
import 'package:movie_app/helpers/failure.dart';
import 'package:movie_app/helpers/movie_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieEntity>>> getAllMovies({int page = 1, int? id});
}