import 'dart:io';

import './command_line.dart';

Future<void> startRepl() async {
  while (true) {
    stdout.write("dart_pokecli> ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      continue;
    }

    var inputList = input.split(" ");
    var command = inputList[0];

    List<String> args = [];

    if (inputList.length > 1) {
      args = inputList.sublist(1);
    }

    var availabeCommands = getCliCommands();

    if (availabeCommands[command] == null) {
      print("Invalid command");
    } else {
      await availabeCommands[command]!.callback(args);
    }
  }
}
