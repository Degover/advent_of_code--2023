import 'package:advent_of_code/solutions/day_02/game.dart';
import 'package:advent_of_code/solutions/day_02/game_set.dart';
import 'package:advent_of_code/solutions/day_02/game_validator.dart';
import 'package:test/test.dart';

void main() {
  final game1 = Game(1, [
    GameSet(redCount: 4, greenCount: 0, blueCount: 3),
    GameSet(redCount: 1, greenCount: 2, blueCount: 6),
    GameSet(redCount: 0, greenCount: 2, blueCount: 0),
  ]);
  final game2 = Game(2, [
    GameSet(redCount: 20, greenCount: 8, blueCount: 6),
    GameSet(redCount: 4, greenCount: 13, blueCount: 5),
  ]);

  test("should validate game 1 as possible", () {
    final validator = GameValidator();

    final result = validator.isPossible(game1);

    expect(result, true);
  });

  test("should validate game 2 as impossible", () {
    final validator = GameValidator();

    final result = validator.isPossible(game2);

    expect(result, false);
  });

  test("should get correct minimum possible for game 1", () {
    final validator = GameValidator();

    final result = validator.getMinimumPossible(game1);

    expect(result.redCount, 4);
    expect(result.greenCount, 2);
    expect(result.blueCount, 6);
  });

  test("should get correct minimum possible for game 2", () {
    final validator = GameValidator();

    final result = validator.getMinimumPossible(game2);

    expect(result.redCount, 20);
    expect(result.greenCount, 13);
    expect(result.blueCount, 6);
  });
}
