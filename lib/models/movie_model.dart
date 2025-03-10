import 'package:movie_app/helpers/app_strings.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/utils/assets.dart';

class MovieModel extends MovieEntity {
  bool? adult;
  String? backdropPath;
  List<dynamic>? genreIds;
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
             posterPath != null
                 ? '${AppStrings.imageUrlPath}$posterPath'
                 : Assets.imagesTest,
         movieTitle: title ?? 'NO TITLE',
         description: overview ?? 'NO DESCRIPTION',
         rate: voteAverage?.toStringAsFixed(2) ?? 'NO RATE',
         releasYear: releaseDate ?? 'NO RELEASE DATE',
         type: convertGenresIds(genreIds ?? [28, 35]),
         trailerKey: '',
       );

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
    adult: json['adult'] ?? false,
    backdropPath: json['backdrop_path'] as String?,
    genreIds: json['genre_ids'] ?? [],
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
    'id': id,
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

Map<int, String> genresMap = {
  28: "Action",
  12: "Adventure",
  16: "Animation",
  35: "Comedy",
  80: "Crime",
  99: "Documentary",
  18: "Drama",
  10751: "Family",
  14: "Fantasy",
  27: "Horror",
  9648: "Mystery",
  10749: "Romance",
  878: "Science Fiction",
  53: "Thriller",
};

List<String> convertGenresIds(List<dynamic> list) {
  return list.map((item) => genresMap[item] ?? '').toList();
}
