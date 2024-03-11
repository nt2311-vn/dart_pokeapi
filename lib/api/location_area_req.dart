import "package:dart_pokeapi/api/pokeapi.dart";

import "./types_api_declare.dart";

LocationAreaResp getLocationAreas(String? pageURL) {
  const endpoint = "/location-area";
  String fullURL = Client.baseURL + endpoint;

  if (pageURL != null) {
    fullURL = pageURL;
  }

  final connectClient = Client.httpClient;

  final request = await connectClient.getUrl(fullURL)


}
