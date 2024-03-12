import "package:dart_pokeapi/command_clear.dart";
import "package:dart_pokeapi/command_explore.dart";
import "dart:io";
import "package:dart_pokeapi/command_help.dart";
import "package:dart_pokeapi/command_map.dart";

class CommandLine {
  final String name;
  final String description;
  final Future<void> Function(List<String> args) callback;
  CommandLine(this.name, this.description, this.callback);
}

Map<String, CommandLine> getCliCommands() {
  return {
    "help": CommandLine("help", "Get all the available list commands",
        (args) => callbackHelp()),
    "map": CommandLine("map", "List down the map info in the world of pokemon",
        (args) => callbackMap()),
    "mapb": CommandLine(
        "mapb",
        "List down the previous map info in the world of pokemon",
        (args) => callbackMapb()),
    "explore": CommandLine(
        "explore", "Explore the area by name or id", callBackExplore),
    "exit": CommandLine("exit", "Exit the prgoram", (args) => exit(0)),
    "clear": CommandLine(
        "clear", "Clear all the log in the cli", (args) => callBackClear()),
  };
}
