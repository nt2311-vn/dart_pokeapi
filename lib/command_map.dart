import "package:dart_pokeapi/api/pokeapi.dart";

import "./api/location_area_req.dart";

Future<void> callbackMap() async {
  final res = await getLocationAreas(Client.nextURL);
  print("Location areas:");
  for (var result in res!.results) {
    print("-${result.name}");
  }

  Client.nextURL = res.next;
  Client.previousURL = res.previous;
}
