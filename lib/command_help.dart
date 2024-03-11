import 'package:dart_pokeapi/command_line.dart';

Future<void> callbackHelp() {
  print("Welcome to the dart pokedex cli menu!");
  print("Here are your available commands:");

  var listCommands = getCliCommands();

  for (var command in listCommands.values) {
    print("-$command.name: $command.description");
  }

  return Future.value();
}
