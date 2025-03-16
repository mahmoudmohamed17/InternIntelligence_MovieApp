import 'package:flutter/material.dart';
import 'package:movie_app/utils/assets.dart';

class MoviePosterPageView extends StatelessWidget {
  const MoviePosterPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PageView.builder(
        controller: pageController,
        itemCount: moviesPosters.length,
        itemBuilder: (context, index) {
          return Image.asset(moviesPosters[index], fit: BoxFit.fill);
        },
      ),
    );
  }
}

List<String> moviesPosters = [
  Assets.images1,
  Assets.images2,
  Assets.images3,
  Assets.images4,
  Assets.images5,
];
