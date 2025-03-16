import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/helpers/custom_button.dart';
import 'package:movie_app/helpers/launch_custom_url.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/utils/app_colors.dart';

class MovieDetailsButton extends StatelessWidget {
  const MovieDetailsButton({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 16,
      children: [
        Expanded(
          child: CustomButton(
            label: 'Play',
            onPressed: () async {
              // https://www.youtube.com/watch?v=
              final httpsUri = Uri(
                scheme: 'https',
                host: 'www.youtube.com',
                path: 'watch',
                queryParameters: {'v': movie.trailerKey},
              );
              debugPrint('The url is: $httpsUri');
              await launchCustomUrl(httpsUri);
            },
            backGrdColor: AppColors.buttonColor,
            icon: FontAwesomeIcons.play,
          ),
        ),
        Expanded(
          child: CustomButton(
            label: 'Download',
            onPressed: () {},
            backGrdColor: AppColors.lightPrimaryColor,
            icon: Icons.download,
          ),
        ),
      ],
    );
  }
}
