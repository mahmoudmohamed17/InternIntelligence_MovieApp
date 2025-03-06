import 'package:flutter/material.dart';
import 'package:movie_app/widgets/categories_widget.dart';
import 'package:movie_app/widgets/most_popular_widget.dart';
import 'package:movie_app/widgets/movie_posters_list.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: MoviePostersList()),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: CategoriesWidget(),),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: MostPopularWidget(),),
      ],
    );
  }
}
