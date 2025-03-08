import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/helpers/get_color_opacity.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/managers/saved_movies_cubit/saved_movie_cubit.dart';

class BookmarkActionButton extends StatefulWidget {
  const BookmarkActionButton({super.key, required this.movie});
  final MovieEntity movie;

  @override
  State<BookmarkActionButton> createState() => _BookmarkActionButtonState();
}

class _BookmarkActionButtonState extends State<BookmarkActionButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.movie.isBookmarked) {
          context.read<SavedMovieCubit>().removeFromSaved(widget.movie);
        } else {
          context.read<SavedMovieCubit>().addToSaved(widget.movie);
        }
        setState(() {
          widget.movie.isBookmarked = !widget.movie.isBookmarked;
        });
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: getColorOpacity(Colors.white, 0.2),
        ),
        child: Center(
          child: Icon(
            widget.movie.isBookmarked
                ? FontAwesomeIcons.solidBookmark
                : FontAwesomeIcons.bookmark,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
