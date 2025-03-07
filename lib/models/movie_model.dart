import 'package:movie_app/helpers/app_strings.dart';
import 'package:movie_app/helpers/movie_entity.dart';

class MovieModel extends MovieEntity {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;

  MovieModel({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
  }) : super(
         movieId: id ?? 0,
         poster:
             posterPath != null ? '${AppStrings.imageUrlPath}$posterPath' : '',
         movieTitle: title ?? 'NO TITLE',
         description: overview ?? 'NO DESCRIPTION',
         rate: voteAverage?.toStringAsFixed(2) ?? 'NO RATE',
         releasYear: releaseDate ?? 'NO RELEASE DATE',
         type: movieType[genreIds?.first ?? 0] ?? 'All',
         trailerKey: '',
       );

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
    adult: json['adult'] as bool?,
    backdropPath: json['backdrop_path'] as String?,
    genreIds: json['genre_ids'] as List<int>?,
    id: json['id'] ?? 0,
    originalLanguage: json['original_language'] as String?,
    originalTitle: json['original_title'] as String?,
    overview: json['overview'] as String?,
    popularity: (json['popularity'] as num?)?.toDouble(),
    posterPath: json['poster_path'] as String?,
    releaseDate: json['release_date'] as String?,
    title: json['title'] as String?,
    video: json['video'] as bool?,
    voteAverage: (json['vote_average'] as num?)?.toDouble(),
  );

  @override
  Map<String, dynamic> toJson() => {
    'adult': adult,
    'backdrop_path': backdropPath,
    'genre_ids': genreIds,
    'id': id ?? 0,
    'original_language': originalLanguage,
    'original_title': originalTitle,
    'overview': overview,
    'popularity': popularity,
    'poster_path': posterPath,
    'release_date': releaseDate,
    'title': title,
    'video': video,
    'vote_average': voteAverage,
  };
}

Map<int, String> movieType = {
  28: 'Action',
  35: 'Comedy',
  18: 'Drama',
  99: 'Documentary',
  27: 'Horror',
};
