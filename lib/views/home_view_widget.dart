import 'package:flutter/material.dart';
import 'package:movie_app/widgets/home_content_widget.dart';
import 'package:movie_app/widgets/movie_posters_list.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: MoviePostersList()),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: HomeContentWidget()),
      ],
    );
  }
}
