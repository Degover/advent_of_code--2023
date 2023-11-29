import 'dart:convert';
import 'dart:io';

import 'package:advent_of_code/shared/input.dart';

class FileInput implements Input {
  final File _file;

  FileInput(String filePath) : _file = File(filePath);

  @override
  Stream<String> getInput() async* {
    final lines =
        _file.openRead().transform(utf8.decoder).transform(LineSplitter());

    try {
      await for (var line in lines) {
        yield line;
      }

      print('File is now closed.');
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }
}
