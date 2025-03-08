import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/managers/saved_movies_cubit/saved_movie_cubit.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/saved_movie_item.dart';

class SavedMoviesList extends StatelessWidget {
  const SavedMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedMovieCubit, SavedMovieState>(
      builder: (context, state) {
        if (state is SavedMovieSuccess) {
          return ListView.builder(
            itemCount: state.movies.length,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemBuilder: (context, index) {
              return Dismissible(
                key: ValueKey(index),
                onDismissed: (direction) {
                  context.read<SavedMovieCubit>().removeFromSaved(
                    state.movies[index],
                  );
                  state.movies[index].isBookmarked = false;
                },
                background: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.buttonColor,
                  ),

                  alignment: Alignment.center,
                  child: Text(
                    'Remove',
                    style: AppStyles.regular16.copyWith(color: Colors.white),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: SavedMovieItem(movie: state.movies[index]),
                ),
              );
            },
          );
        } else {
          return Center(
            child: Text(
              'There\'s no saved items!',
              style: AppStyles.semiBold20.copyWith(color: Colors.white),
            ),
          );
        }
      },
    );
  }
}
