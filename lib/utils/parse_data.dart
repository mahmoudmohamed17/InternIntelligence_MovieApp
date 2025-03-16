import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/models/movie_model.dart';

List<MovieEntity> parseData(Map<String, dynamic> data) {
  List<MovieEntity> result = [];
  for (var item in data['results']) {
    result.add(MovieModel.fromJson(item));
  }
  return result;
}
