import "package:dart_pokeapi/command_clear.dart";
import "package:dart_pokeapi/command_explore.dart";
import "dart:io";
import "package:dart_pokeapi/command_help.dart";
import "package:dart_pokeapi/command_map.dart";

class CommandLine {
  final String name;
  final String description;
  final Future<void> Function() callback;
  CommandLine(this.name, this.description, this.callback);
}

Map<String, CommandLine> getCliCommands() {
  return {
    "help": CommandLine(
        "help", "Get all the available list commands", callbackHelp),
    "map": CommandLine(
        "map", "List down the map info in the world of pokemon", callbackMap),
    "mapb": CommandLine(
        "mapb",
        "List down the previous map info in the world of pokemon",
        callbackMapb),
    "explore": CommandLine(
        "explore", "Explore the area by name or id", callBackExplore),
    "exit": CommandLine("exit", "Exit the prgoram", () => exit(0)),
    "clear":
        CommandLine("clear", "Clear all the log in the cli", callBackClear),
  };
}
