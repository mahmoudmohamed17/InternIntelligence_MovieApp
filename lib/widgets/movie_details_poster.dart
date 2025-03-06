import 'package:flutter/material.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/utils/assets.dart';
import 'package:movie_app/widgets/action_button.dart';

class MovieDetailsPoster extends StatelessWidget {
  const MovieDetailsPoster({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.45,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.asset(Assets.imagesTest, fit: BoxFit.cover),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12,
                    children: [ActionButton(), ActionButton()],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
