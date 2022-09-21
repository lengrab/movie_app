// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      json['id'] as String?,
      json['type'] as String?,
      json['link'] as String?,
      json['title'] as String?,
      json['title_orig'] as String?,
      json['other_title'] as String?,
      json['translation'] == null
          ? null
          : Translation.fromJson(json['translation'] as Map<String, dynamic>),
      json['year'] as int?,
      json['last_season'] as int?,
      json['episodes_count'] as int?,
      json['last_episode'] as int?,
      json['kinopoisk_id'] as String?,
      json['imdb_id'] as String?,
      json['worldart_link'] as String?,
      json['shikimori_id'] as String?,
      json['quality'] as String?,
      json['camrip'] as bool?,
      (json['blocked_countries'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      json['blocked_seasons'] as Map<String, dynamic>?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      (json['screenshots'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'link': instance.link,
      'title': instance.title,
      'title_orig': instance.titleOrig,
      'other_title': instance.otherTitle,
      'translation': instance.translation,
      'year': instance.year,
      'last_season': instance.lastSeason,
      'episodes_count': instance.episodesCount,
      'last_episode': instance.lastEpisode,
      'kinopoisk_id': instance.kinopoiskId,
      'imdb_id': instance.imdbId,
      'worldart_link': instance.worldartLink,
      'shikimori_id': instance.shikimoriId,
      'quality': instance.quality,
      'camrip': instance.camrip,
      'blocked_countries': instance.blockedCountries,
      'blocked_seasons': instance.blockedSeasons,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'screenshots': instance.screenshots,
    };

Translation _$TranslationFromJson(Map<String, dynamic> json) => Translation(
      json['id'] as int?,
      json['title'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$TranslationToJson(Translation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
    };
