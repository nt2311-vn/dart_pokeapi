import 'dart:convert';

import 'package:dart_pokeapi/api/pokeapi.dart';
import 'package:dart_pokeapi/api/types_api_declare.dart';

Future<LocationArea?> exploreArea(String locationName) async {
  final String endpoint = "/location-area/$locationName";
  String fullURL = "${Client.baseURL}$endpoint";

  final connectClient = Client.httpClient;
  final req = await connectClient.getUrl(Uri.parse(fullURL));
  final res = await req.close();

  if (res.statusCode > 299) {
    throw Exception("Bad status code: ${res.statusCode}");
  }

  final resBody = await res.transform(utf8.decoder).join();

  if (resBody.isEmpty) {
    throw Exception("Receive an empty reponse");
  }

  return LocationArea.fromJson(json.decode(resBody));
}
