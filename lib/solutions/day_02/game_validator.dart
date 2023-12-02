import 'package:advent_of_code/solutions/day_02/game.dart';
import 'package:advent_of_code/solutions/day_02/game_set.dart';

class GameValidator {
  final int _maxRed = 12;
  final int _maxGreen = 13;
  final int _maxBlue = 14;

  bool isPossible(Game game) {
    for (final set in game.sets) {
      if (set.redCount > _maxRed ||
          set.greenCount > _maxGreen ||
          set.blueCount > _maxBlue) return false;
    }

    return true;
  }

  GameSet getMinimumPossible(Game game) {
    var redCount = 0;
    var greenCount = 0;
    var blueCount = 0;

    for (final set in game.sets) {
      if (set.redCount > redCount) redCount = set.redCount;
      if (set.greenCount > greenCount) greenCount = set.greenCount;
      if (set.blueCount > blueCount) blueCount = set.blueCount;
    }

    return GameSet(
        redCount: redCount, greenCount: greenCount, blueCount: blueCount);
  }
}
