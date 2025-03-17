import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/helpers/navigation_extension.dart';
import 'package:movie_app/helpers/share_text.dart';
import 'package:movie_app/models/action_button_model.dart';
import 'package:movie_app/widgets/action_button.dart';
import 'package:movie_app/widgets/bookmark_action_button.dart';

class MovieDetailsPosterHeader extends StatelessWidget {
  const MovieDetailsPosterHeader({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            BookmarkActionButton(movie: movie),
            ActionButton(
              model: ActionButtonModel(
                icon: FontAwesomeIcons.share,
                onTap: () async {
                  await shareText(movie);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
