import 'package:flutter/material.dart';
import 'package:movie_app/utils/assets.dart';

class MoviePosterPageView extends StatelessWidget {
  const MoviePosterPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PageView(
        controller: pageController,
        children: [
          Image.asset(Assets.imagesTest, fit: BoxFit.fill),
          Image.asset(Assets.imagesTest, fit: BoxFit.fill),
          Image.asset(Assets.imagesTest, fit: BoxFit.fill),
          Image.asset(Assets.imagesTest, fit: BoxFit.fill),
          Image.asset(Assets.imagesTest, fit: BoxFit.fill),
        ],
      ),
    );
  }
}
