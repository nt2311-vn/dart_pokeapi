import 'dart:io';

import 'package:dart_pokeapi/api/explore_area.dart';
import 'package:dart_pokeapi/api/types_api_declare.dart';

Future<void> callBackExplore() async {
  try {
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      throw Exception("Please provide a location name to explore");
    }

    final args = input.split(" ");

    print(args);

    if (args.length != 1) {
      throw Exception("No proper location name provided");
    }

    String locationName = args[0];

    LocationArea? locationArea = await exploreArea(locationName);

    if (locationArea == null) {
      throw Exception("No location area found for $locationName");
    }

    print("Exploring $locationName");
    print("List of catchable pokemons:");

    for (var pokemon in locationArea.pokemonEncounters!) {
      print("-${pokemon.pokemon!.name}");
    }
  } catch (err) {
    print(err);
  }
}
