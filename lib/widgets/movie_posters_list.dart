import 'package:flutter/material.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/widgets/dots_indicator_widget.dart';
import 'package:movie_app/widgets/movie_poster_page_view.dart';

class MoviePostersList extends StatefulWidget {
  const MoviePostersList({super.key});

  @override
  State<MoviePostersList> createState() => _MoviePostersListState();
}

class _MoviePostersListState extends State<MoviePostersList> {
  late PageController _pageController;
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _activeIndex = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.40,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: MoviePosterPageView(pageController: _pageController),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [DotsIndicatorWidget(activeDot: _activeIndex)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
