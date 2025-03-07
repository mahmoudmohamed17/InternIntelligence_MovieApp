import 'dart:developer';

import 'package:movie_app/helpers/movie_entity.dart';

List<MovieEntity> parseData(Map<String, dynamic> data) {
  List<MovieEntity> result = [];
  for(var item in data['results']) {
    log('Hello world');
    result.add(MovieEntity.fromJson(item));
  }
  return result;
}