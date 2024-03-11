// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types_api_declare.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationAreaResp _$LocationAreaRespFromJson(Map<String, dynamic> json) =>
    LocationAreaResp(
      json['count'] as int,
      json['next'] as String?,
      json['previous'] as String?,
      (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationAreaRespToJson(LocationAreaResp instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      json['name'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
