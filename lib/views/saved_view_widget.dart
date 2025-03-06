import 'package:flutter/material.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/saved_movies_list.dart';

class SavedViewWidget extends StatelessWidget {
  const SavedViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Saved',
                style: AppStyles.bold18.copyWith(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Expanded(child: SavedMoviesList()),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
