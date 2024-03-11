import 'package:dart_pokeapi/command_line.dart';

Future<void> callbackHelp() {
  print("Welcome to the dart pokedex cli menu!");
  print("Here are your available commands:");

  var listCommands = getCliCommands();

  for (var entry in listCommands.entries) {
    print("-${entry.key}: ${entry.value.description}");
  }
  print("");

  return Future.value();
}
