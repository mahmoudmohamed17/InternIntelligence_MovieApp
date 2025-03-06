import 'package:flutter/material.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/utils/assets.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == 9 ? 0 : 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                Assets.imagesTest,
                width: context.width * 0.33,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
