import 'package:flutter/material.dart';
import 'package:movie_app/utils/styles.dart';

class MovieTrailerHeader extends StatelessWidget {
  const MovieTrailerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Trailer',
          style: AppStyles.regular16.copyWith(color: Colors.white),
        ),
        const Icon(Icons.download, color: Colors.white, size: 18),
      ],
    );
  }
}
