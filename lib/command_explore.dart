import 'package:dart_pokeapi/api/explore_area.dart';
import 'package:dart_pokeapi/api/types_api_declare.dart';

Future<void> callBackExplore(List<String> args) async {
  try {
    if (args.length != 1) {
      throw Exception("No proper location name provided");
    }

    String locationName = args[0];

    LocationArea? locationArea = await exploreArea(locationName);

    if (locationArea == null) {
      throw Exception("No location area found for $locationName");
    }

    print("Exploring $locationName");
    print("List of catchable pokemons in $locationName:");

    for (var pokemon in locationArea.pokemonEncounters!) {
      print("-${pokemon.pokemon!.name}");
    }

    print("");
  } catch (err) {
    print(err);
  }
}
