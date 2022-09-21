import 'package:json_annotation/json_annotation.dart';

// flutter packages pub run build_runner build

part 'movie.g.dart';

@JsonSerializable()
class Movie{
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'link')
  final String? link;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'title_orig')
  final String? titleOrig;

  @JsonKey(name: 'other_title')
  final String? otherTitle;

  @JsonKey(name: 'translation')
  final Translation? translation;

  @JsonKey(name: 'year')
  final int? year;

  @JsonKey(name: 'last_season')
  final int? lastSeason;

  @JsonKey(name: 'episodes_count')
  final int? episodesCount;

  @JsonKey(name: 'last_episode')
  final int? lastEpisode;

  @JsonKey(name: 'kinopoisk_id')
  final String? kinopoiskId;

  @JsonKey(name: 'imdb_id')
  final String? imdbId;

  @JsonKey(name: 'worldart_link')
  final String? worldartLink;

  @JsonKey(name: 'shikimori_id')
  final String? shikimoriId;

  @JsonKey(name: 'quality')
  final String? quality;

  @JsonKey(name: 'camrip')
  final bool? camrip;

  @JsonKey(name: 'blocked_countries')
  final List<String?>? blockedCountries;

  @JsonKey(name: 'blocked_seasons')
  final Map? blockedSeasons;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'screenshots')
  final List<String>? screenshots;

  Movie(
      this.id,
      this.type,
      this.link,
      this.title,
      this.titleOrig,
      this.otherTitle,
      this.translation,
      this.year,
      this.lastSeason,
      this.episodesCount,
      this.lastEpisode,
      this.kinopoiskId,
      this.imdbId,
      this.worldartLink,
      this.shikimoriId,
      this.quality,
      this.camrip,
      this.blockedCountries,
      this.blockedSeasons,
      this.createdAt,
      this.updatedAt,
      this.screenshots);

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@JsonSerializable()
class Translation{
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'type')
  final String? type;

  Translation(this.id, this.title, this.type);

  factory Translation.fromJson(Map<String, dynamic> json) => _$TranslationFromJson(json);
}
