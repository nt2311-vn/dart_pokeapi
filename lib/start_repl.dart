import 'dart:io';

import 'package:dart_pokeapi/command_line.dart';

void startRepl() {
  while (true) {
    stdout.write("dart_pokecli> ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      continue;
    }

    var inputList = input.split(" ");
    var command = inputList[0];

    var availabeCommands = getCliCommands();

    if (availabeCommands[command] == null) {
      print("Invalid command");
    } else {
      availabeCommands[command]!.callback();
    }
  }
}
