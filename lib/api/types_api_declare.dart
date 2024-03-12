import "package:json_annotation/json_annotation.dart";
part "types_api_declare.g.dart";

@JsonSerializable()
class LocationAreaResp {
  int count;
  String? next;
  String? previous;
  List<Result> results;

  LocationAreaResp(this.count, this.next, this.previous, this.results);
  factory LocationAreaResp.fromJson(Map<String, dynamic> json) =>
      _$LocationAreaRespFromJson(json);

  Map<String, dynamic> toJson() => _$LocationAreaRespToJson(this);

  @override
  String toString() {
    return "LocationAreaResp: {count: $count, next: $next, previous: $previous, results: $results}";
  }
}

@JsonSerializable()
class Result {
  String name;
  String url;

  Result(this.name, this.url);
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);

  @override
  String toString() {
    return "Result: {name: $name, url: $url}";
  }
}

@JsonSerializable()
class LocationArea {
  List<EncounterMethodRates>? encounterMethodRates;
  int? gameIndex;
  int? id;
  Location? location;
  String? name;
  List<Names>? names;
  List<PokemonEncounters>? pokemonEncounters;

  LocationArea(
      {this.encounterMethodRates,
      this.gameIndex,
      this.id,
      this.location,
      this.name,
      this.names,
      this.pokemonEncounters});

  LocationArea.fromJson(Map<String, dynamic> json) {
    encounterMethodRates = json["encounter_method_rates"] == null
        ? null
        : (json["encounter_method_rates"] as List)
            .map((e) => EncounterMethodRates.fromJson(e))
            .toList();
    gameIndex = json["game_index"];
    id = json["id"];
    location =
        json["location"] == null ? null : Location.fromJson(json["location"]);
    name = json["name"];
    names = json["names"] == null
        ? null
        : (json["names"] as List).map((e) => Names.fromJson(e)).toList();
    pokemonEncounters = json["pokemon_encounters"] == null
        ? null
        : (json["pokemon_encounters"] as List)
            .map((e) => PokemonEncounters.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (encounterMethodRates != null) {
      _data["encounter_method_rates"] =
          encounterMethodRates?.map((e) => e.toJson()).toList();
    }
    _data["game_index"] = gameIndex;
    _data["id"] = id;
    if (location != null) {
      _data["location"] = location?.toJson();
    }
    _data["name"] = name;
    if (names != null) {
      _data["names"] = names?.map((e) => e.toJson()).toList();
    }
    if (pokemonEncounters != null) {
      _data["pokemon_encounters"] =
          pokemonEncounters?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

@JsonSerializable()
class PokemonEncounters {
  Pokemon? pokemon;
  List<VersionDetails1>? versionDetails;

  PokemonEncounters({this.pokemon, this.versionDetails});

  PokemonEncounters.fromJson(Map<String, dynamic> json) {
    pokemon =
        json["pokemon"] == null ? null : Pokemon.fromJson(json["pokemon"]);
    versionDetails = json["version_details"] == null
        ? null
        : (json["version_details"] as List)
            .map((e) => VersionDetails1.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (pokemon != null) {
      _data["pokemon"] = pokemon?.toJson();
    }
    if (versionDetails != null) {
      _data["version_details"] =
          versionDetails?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

@JsonSerializable()
class VersionDetails1 {
  List<EncounterDetails>? encounterDetails;
  int? maxChance;
  Version1? version;

  VersionDetails1({this.encounterDetails, this.maxChance, this.version});

  VersionDetails1.fromJson(Map<String, dynamic> json) {
    encounterDetails = json["encounter_details"] == null
        ? null
        : (json["encounter_details"] as List)
            .map((e) => EncounterDetails.fromJson(e))
            .toList();
    maxChance = json["max_chance"];
    version =
        json["version"] == null ? null : Version1.fromJson(json["version"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (encounterDetails != null) {
      _data["encounter_details"] =
          encounterDetails?.map((e) => e.toJson()).toList();
    }
    _data["max_chance"] = maxChance;
    if (version != null) {
      _data["version"] = version?.toJson();
    }
    return _data;
  }
}

@JsonSerializable()
class Version1 {
  String? name;
  String? url;

  Version1({this.name, this.url});

  Version1.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

@JsonSerializable()
class EncounterDetails {
  int? chance;
  List<dynamic>? conditionValues;
  int? maxLevel;
  Method? method;
  int? minLevel;

  EncounterDetails(
      {this.chance,
      this.conditionValues,
      this.maxLevel,
      this.method,
      this.minLevel});

  EncounterDetails.fromJson(Map<String, dynamic> json) {
    chance = json["chance"];
    conditionValues = json["condition_values"] ?? [];
    maxLevel = json["max_level"];
    method = json["method"] == null ? null : Method.fromJson(json["method"]);
    minLevel = json["min_level"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["chance"] = chance;
    if (conditionValues != null) {
      _data["condition_values"] = conditionValues;
    }
    _data["max_level"] = maxLevel;
    if (method != null) {
      _data["method"] = method?.toJson();
    }
    _data["min_level"] = minLevel;
    return _data;
  }
}

@JsonSerializable()
class Method {
  String? name;
  String? url;

  Method({this.name, this.url});

  Method.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

@JsonSerializable()
class Pokemon {
  String? name;
  String? url;

  Pokemon({this.name, this.url});

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

@JsonSerializable()
class Names {
  Language? language;
  String? name;

  Names({this.language, this.name});

  Names.fromJson(Map<String, dynamic> json) {
    language =
        json["language"] == null ? null : Language.fromJson(json["language"]);
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (language != null) {
      _data["language"] = language?.toJson();
    }
    _data["name"] = name;
    return _data;
  }
}

@JsonSerializable()
class Language {
  String? name;
  String? url;

  Language({this.name, this.url});

  Language.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

@JsonSerializable()
class Location {
  String? name;
  String? url;

  Location({this.name, this.url});

  Location.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

@JsonSerializable()
class EncounterMethodRates {
  EncounterMethod? encounterMethod;
  List<VersionDetails>? versionDetails;

  EncounterMethodRates({this.encounterMethod, this.versionDetails});

  EncounterMethodRates.fromJson(Map<String, dynamic> json) {
    encounterMethod = json["encounter_method"] == null
        ? null
        : EncounterMethod.fromJson(json["encounter_method"]);
    versionDetails = json["version_details"] == null
        ? null
        : (json["version_details"] as List)
            .map((e) => VersionDetails.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (encounterMethod != null) {
      _data["encounter_method"] = encounterMethod?.toJson();
    }
    if (versionDetails != null) {
      _data["version_details"] =
          versionDetails?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

@JsonSerializable()
class VersionDetails {
  int? rate;
  Version? version;

  VersionDetails({this.rate, this.version});

  VersionDetails.fromJson(Map<String, dynamic> json) {
    rate = json["rate"];
    version =
        json["version"] == null ? null : Version.fromJson(json["version"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["rate"] = rate;
    if (version != null) {
      _data["version"] = version?.toJson();
    }
    return _data;
  }
}

@JsonSerializable()
class Version {
  String? name;
  String? url;

  Version({this.name, this.url});

  Version.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

@JsonSerializable()
class EncounterMethod {
  String? name;
  String? url;

  EncounterMethod({this.name, this.url});

  EncounterMethod.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}
