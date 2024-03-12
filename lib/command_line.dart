import "./command_help.dart";
import "./command_map.dart";
import "./command_clear.dart";
import "dart:io";

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
    "explore": CommandLine(
        "explore", "Explore the area by name or id", () => Future.value()),
    "exit": CommandLine("exit", "Exit the prgoram", () => exit(0)),
    "clear":
        CommandLine("clear", "Clear all the log in the cli", callBackClear),
  };
}
