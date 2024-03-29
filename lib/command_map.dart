import "package:dart_pokeapi/api/pokeapi.dart";

import "./api/location_area_req.dart";

Future<void> callbackMap() async {
  try {
    final res = await getLocationAreas(Client.nextURL);

    if (res == null) {
      throw Exception("Failed to get location areas");
    }
    print("Location areas:");

    for (var result in res.results) {
      print("-${result.name}");
    }

    print("");

    Client.nextURL = res.next;
    Client.previousURL = res.previous;
  } catch (err) {
    print(err);
  }
}

Future<void> callbackMapb() async {
  if (Client.previousURL == null) {
    print("This is the first page, cannot go back further");
    return;
  }

  final res = await getLocationAreas(Client.previousURL);
  print("Previous location areas:");

  for (var location in res!.results) {
    print("-${location.name}");
  }

  print("");

  Client.nextURL = res.next;
  Client.previousURL = res.previous;
}
