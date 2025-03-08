import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/managers/home_cubit/home_cubit.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/movies_list.dart';

class MostPopularMoviesWidget extends StatelessWidget {
  const MostPopularMoviesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Most Popular',
              style: AppStyles.semiBold20.copyWith(color: Colors.white),
            ),
            Text(
              'See all',
              style: AppStyles.regular14.copyWith(color: Colors.white),
            ),
          ],
        ),
        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state.status == HomeStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status == HomeStatus.failed) {
              return const Center(child: Text('Failed to load movies'));
            } else if (state.movies.isEmpty) {
              return const Center(child: Text('No movies found'));
            }

            return MoviesList(movies: state.movies.sublist(0,8));
          },
        ),
      ],
    );
  }
}
