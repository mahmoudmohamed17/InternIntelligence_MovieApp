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

  Map<String, dynamic> toJson() {
    return {
      'movieId': movieId,
      'poster': poster,
      'movieTitle': movieTitle,
      'description': description,
      'rate': rate,
      'releasYear': releasYear,
      'type': type,
      'trailerKey': trailerKey,
      'isBookmarked': isBookmarked,
    };
  }

  factory MovieEntity.fromJson(Map<String, dynamic> json) {
    return MovieEntity(
      movieId: json['movieId'] ?? 0,
      poster: json['poster'],
      movieTitle: json['movieTitle'],
      description: json['description'],
      rate: json['rate'],
      releasYear: json['releasYear'],
      type: json['type'],
      trailerKey: json['trailerKey'] ?? '',
      isBookmarked: json['isBookmarked'] ?? false,
    );
  }
}
