import 'package:flutter/material.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/helpers/routes.dart';
import 'package:movie_app/views/main_view.dart';
import 'package:movie_app/views/movie_details_view.dart';

class AppRouting {
  static Route<dynamic> onGeneratedRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.mainView:
        return MaterialPageRoute(builder: (context) => const MainView());
      case Routes.movieDetailsView:
        final movie = setting.arguments as MovieEntity;
        return MaterialPageRoute(
          builder: (context) => MovieDetailsView(movie: movie),
        );
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}
