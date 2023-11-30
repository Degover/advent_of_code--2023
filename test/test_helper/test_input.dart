import 'package:advent_of_code/shared/input.dart';

class TestInput implements Input {
  final List<String> _lines;
  TestInput(this._lines);

  @override
  Stream<String> getInput() async* {
    for (var line in _lines) {
      yield line;
    }
  }
}
