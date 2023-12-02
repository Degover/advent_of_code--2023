import 'package:advent_of_code/solutions/day_02/game.dart';
import 'package:advent_of_code/solutions/day_02/game_set.dart';

class GameParser {
  final RegExp _redRegex = RegExp(r'(\d+) red');
  final RegExp _greenRegex = RegExp(r'(\d+) green');
  final RegExp _blueRegex = RegExp(r'(\d+) blue');

  Game parse(String inputLine) {
    final [idInput, setInputs] = inputLine.split(':');
    final id = int.parse(idInput.substring(5));

    final sets = setInputs
        .split(';')
        .map((setInput) => GameSet(
            redCount: _getCount(setInput, _redRegex),
            greenCount: _getCount(setInput, _greenRegex),
            blueCount: _getCount(setInput, _blueRegex)))
        .toList();

    return Game(id, sets);
  }

  int _getCount(String setInput, RegExp regex) {
    final match = regex.firstMatch(setInput);
    if (match == null) {
      return 0;
    }

    return int.parse(match.group(1)!);
  }
}
