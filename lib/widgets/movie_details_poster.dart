import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/widgets/movie_details_poster_header.dart';

class MovieDetailsPoster extends StatelessWidget {
  const MovieDetailsPoster({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.45,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: movie.poster,
              fit: BoxFit.fill,
              errorWidget:
                  (context, url, error) =>
                      const Center(child: Icon(FontAwesomeIcons.exclamation)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 48),
            child: Align(
              alignment: Alignment.topCenter,
              child: MovieDetailsPosterHeader(),
            ),
          ),
        ],
      ),
    );
  }
}
