import 'package:flutter/material.dart';
import 'package:movie_app/widgets/latest_movies_widget.dart';
import 'package:movie_app/widgets/most_popular_movies_widget.dart';

class AllMoviesPage extends StatelessWidget {
  const AllMoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: MostPopularMoviesWidget()),
        SizedBox(height: 16),
        Expanded(child: LatestMoviesWidget()),
        SizedBox(height: 8),
      ],
    );
  }
}
