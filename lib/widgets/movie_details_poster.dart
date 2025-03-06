import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/helpers/navigation_extension.dart';
import 'package:movie_app/models/action_button_model.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(
                    model: ActionButtonModel(
                      icon: FontAwesomeIcons.chevronLeft,
                      onTap: () {
                        context.pop();
                      },
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12,
                    children: [
                      ActionButton(
                        model: ActionButtonModel(
                          icon: FontAwesomeIcons.bookmark,
                          onTap: () {},
                        ),
                      ),
                      ActionButton(
                        model: ActionButtonModel(
                          icon: FontAwesomeIcons.share,
                          onTap: () {},
                        ),
                      ),
                    ],
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
