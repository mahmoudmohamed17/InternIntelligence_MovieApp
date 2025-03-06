import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_details_poster.dart';
import 'package:movie_app/widgets/movie_info_widget.dart';

class MovieDetailsViewBody extends StatelessWidget {
  const MovieDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: MovieDetailsPoster()),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: MovieInfoAndButtons(),),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
      ],
    );
  }
}
