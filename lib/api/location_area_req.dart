import "dart:convert";

import "package:dart_pokeapi/api/pokeapi.dart";

import "./types_api_declare.dart";

Future<LocationAreaResp?> getLocationAreas(String? pageURL) async {
  const endpoint = "/location-area";
  String fullURL = Client.baseURL + endpoint;

  if (pageURL != null) {
    fullURL = pageURL;
  }

  final connectClient = Client.httpClient;
  final req = await connectClient.getUrl(Uri.parse(fullURL));
  final res = await req.close();

  if (res.statusCode > 399) {
    print("Bad error code: ${res.statusCode}");
    return null;
  }

  final resBody = await res.transform(utf8.decoder).join();
  LocationAreaResp locationArea =
      LocationAreaResp.fromJson(json.decode(resBody));

  return locationArea;
}
