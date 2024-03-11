import "./command_help.dart";

class CommandLine {
  final String name;
  final String description;
  final Future<void> Function() callback;
  CommandLine(this.name, this.description, this.callback);
}

Map<String, CommandLine> getCliCommands() {
  return {
    "help": CommandLine(
        "help", "Get all the available list commands", callbackHelp,
    "map": CommandLine("map", "List down the map info in the world of pokemon",
        () => Future.value()),
    "explore": CommandLine(
        "explore", "Explore the area by name or id", () => Future.value()),
  };
}
