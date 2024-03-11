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
}

@JsonSerializable()
class Result {
  String name;
  String url;

  Result(this.name, this.url);
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
