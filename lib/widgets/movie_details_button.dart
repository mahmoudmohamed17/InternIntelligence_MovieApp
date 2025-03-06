import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/helpers/custom_button.dart';
import 'package:movie_app/utils/app_colors.dart';

class MovieDetailsButton extends StatelessWidget {
  const MovieDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 16,
      children: [
        Expanded(
          child: CustomButton(
            label: 'Play',
            onPressed: () {},
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
