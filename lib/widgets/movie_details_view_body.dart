import 'package:flutter/material.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/widgets/movie_details_poster.dart';
import 'package:movie_app/widgets/movie_details_tabs_widget.dart';
import 'package:movie_app/widgets/movie_info_widget.dart';

class MovieDetailsViewBody extends StatelessWidget {
  const MovieDetailsViewBody({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: MovieDetailsPoster(movie: movie)),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: MovieInfoAndButtons(movie: movie)),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: MovieDetailsTabsWidget(movie: movie)),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
      ],
    );
  }
}
