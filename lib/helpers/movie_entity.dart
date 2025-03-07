class MovieEntity {
  final String poster;
  final String title;
  final String description;
  final String rate;
  final String releasYear;
  final String type;
  bool isBookmarked;

  MovieEntity({
    required this.poster,
    required this.title,
    required this.description,
    required this.rate,
    required this.releasYear,
    required this.type,
    this.isBookmarked = false,
  });
}
