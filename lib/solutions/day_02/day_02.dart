import 'package:advent_of_code/shared/input.dart';
import 'package:advent_of_code/solutions/day_02/game_parser.dart';
import 'package:advent_of_code/solutions/day_02/game_validator.dart';
import 'package:advent_of_code/solutions/solution.dart';

class DayTwo implements Solution {
  @override
  Future<String> firstPart(Input input) async {
    final parser = GameParser();
    final validator = GameValidator();

    final possibleGames =
        input.getInput().map(parser.parse).where(validator.isPossible);

    final result = await possibleGames
        .map((game) => game.id)
        .reduce((previous, id) => previous + id);

    return result.toString();
  }

  @override
  Future<String> secondPart(Input input) async {
    final parser = GameParser();
    final validator = GameValidator();

    final result = await input
        .getInput()
        .map(parser.parse)
        .map(validator.getMinimumPossible)
        .map((set) => set.redCount * set.greenCount * set.blueCount)
        .reduce((previous, power) => previous + power);

    return result.toString();
  }
}
