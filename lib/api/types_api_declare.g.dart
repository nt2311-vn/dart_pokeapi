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

LocationArea _$LocationAreaFromJson(Map<String, dynamic> json) => LocationArea(
      encounterMethodRates: (json['encounterMethodRates'] as List<dynamic>?)
          ?.map((e) => EncounterMethodRates.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndex: json['gameIndex'] as int?,
      id: json['id'] as int?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      name: json['name'] as String?,
      names: (json['names'] as List<dynamic>?)
          ?.map((e) => Names.fromJson(e as Map<String, dynamic>))
          .toList(),
      pokemonEncounters: (json['pokemonEncounters'] as List<dynamic>?)
          ?.map((e) => PokemonEncounters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationAreaToJson(LocationArea instance) =>
    <String, dynamic>{
      'encounterMethodRates': instance.encounterMethodRates,
      'gameIndex': instance.gameIndex,
      'id': instance.id,
      'location': instance.location,
      'name': instance.name,
      'names': instance.names,
      'pokemonEncounters': instance.pokemonEncounters,
    };

PokemonEncounters _$PokemonEncountersFromJson(Map<String, dynamic> json) =>
    PokemonEncounters(
      pokemon: json['pokemon'] == null
          ? null
          : Pokemon.fromJson(json['pokemon'] as Map<String, dynamic>),
      versionDetails: (json['versionDetails'] as List<dynamic>?)
          ?.map((e) => VersionDetails1.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonEncountersToJson(PokemonEncounters instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon,
      'versionDetails': instance.versionDetails,
    };

VersionDetails1 _$VersionDetails1FromJson(Map<String, dynamic> json) =>
    VersionDetails1(
      encounterDetails: (json['encounterDetails'] as List<dynamic>?)
          ?.map((e) => EncounterDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxChance: json['maxChance'] as int?,
      version: json['version'] == null
          ? null
          : Version1.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionDetails1ToJson(VersionDetails1 instance) =>
    <String, dynamic>{
      'encounterDetails': instance.encounterDetails,
      'maxChance': instance.maxChance,
      'version': instance.version,
    };

Version1 _$Version1FromJson(Map<String, dynamic> json) => Version1(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$Version1ToJson(Version1 instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

EncounterDetails _$EncounterDetailsFromJson(Map<String, dynamic> json) =>
    EncounterDetails(
      chance: json['chance'] as int?,
      conditionValues: json['conditionValues'] as List<dynamic>?,
      maxLevel: json['maxLevel'] as int?,
      method: json['method'] == null
          ? null
          : Method.fromJson(json['method'] as Map<String, dynamic>),
      minLevel: json['minLevel'] as int?,
    );

Map<String, dynamic> _$EncounterDetailsToJson(EncounterDetails instance) =>
    <String, dynamic>{
      'chance': instance.chance,
      'conditionValues': instance.conditionValues,
      'maxLevel': instance.maxLevel,
      'method': instance.method,
      'minLevel': instance.minLevel,
    };

Method _$MethodFromJson(Map<String, dynamic> json) => Method(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$MethodToJson(Method instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Names _$NamesFromJson(Map<String, dynamic> json) => Names(
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$NamesToJson(Names instance) => <String, dynamic>{
      'language': instance.language,
      'name': instance.name,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

EncounterMethodRates _$EncounterMethodRatesFromJson(
        Map<String, dynamic> json) =>
    EncounterMethodRates(
      encounterMethod: json['encounterMethod'] == null
          ? null
          : EncounterMethod.fromJson(
              json['encounterMethod'] as Map<String, dynamic>),
      versionDetails: (json['versionDetails'] as List<dynamic>?)
          ?.map((e) => VersionDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EncounterMethodRatesToJson(
        EncounterMethodRates instance) =>
    <String, dynamic>{
      'encounterMethod': instance.encounterMethod,
      'versionDetails': instance.versionDetails,
    };

VersionDetails _$VersionDetailsFromJson(Map<String, dynamic> json) =>
    VersionDetails(
      rate: json['rate'] as int?,
      version: json['version'] == null
          ? null
          : Version.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionDetailsToJson(VersionDetails instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'version': instance.version,
    };

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

EncounterMethod _$EncounterMethodFromJson(Map<String, dynamic> json) =>
    EncounterMethod(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$EncounterMethodToJson(EncounterMethod instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
