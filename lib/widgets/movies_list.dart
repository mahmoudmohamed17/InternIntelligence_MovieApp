import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/helpers/get_movie_trailer_key.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/helpers/navigation_extension.dart';
import 'package:movie_app/helpers/routes.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({super.key, required this.movies});
  final List<MovieEntity> movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              context.pushNamed(
                Routes.movieDetailsView,
                arguments: movies[index],
              );
              await getMovieTrailerKey(movies[index]);
            },
            child: Padding(
              padding: EdgeInsets.only(right: index == 9 ? 0 : 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: CachedNetworkImage(
                  imageUrl: movies[index].poster,
                  width: context.width * 0.33,
                  fit: BoxFit.fill,
                  errorWidget:
                      (context, url, error) => const Center(
                        child: Icon(
                          FontAwesomeIcons.exclamation,
                          color: Colors.red,
                        ),
                      ),
                  placeholder:
                      (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
