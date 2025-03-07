class MovieEntity {
  final int movieId;
  final String poster;
  final String movieTitle;
  final String description;
  final String rate;
  final String releasYear;
  final String type;
  String trailerKey;
  bool isBookmarked;

  MovieEntity({
    required this.movieId,
    required this.poster,
    required this.movieTitle,
    required this.description,
    required this.rate,
    required this.releasYear,
    required this.type,
    this.trailerKey = '', // temporary empty utill get the formal key
    this.isBookmarked = false,
  });
}
