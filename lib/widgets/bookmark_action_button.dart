import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/helpers/get_color_opacity.dart';

class BookmarkActionButton extends StatefulWidget {
  const BookmarkActionButton({super.key});

  @override
  State<BookmarkActionButton> createState() => _BookmarkActionButtonState();
}

class _BookmarkActionButtonState extends State<BookmarkActionButton> {
  bool _isTaped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isTaped = !_isTaped;
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
            _isTaped
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
