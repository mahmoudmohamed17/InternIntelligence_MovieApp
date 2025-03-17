import 'package:flutter/widgets.dart';
import 'package:movie_app/helpers/app_strings.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:share_plus/share_plus.dart';

Future<void> shareText(MovieEntity movie) async {
  final result = await Share.share(
    'I\'m watching ${movie.movieTitle}\nCheck it now at: ${AppStrings.youtubeUrlPath + movie.trailerKey}',
  );

  if (result.status == ShareResultStatus.success) {
    debugPrint('Thank you for your time!');
  }
}
