import 'package:advent_of_code/solutions/day_02/game_parser.dart';
import 'package:test/test.dart';

void main() {
  test("should parse default input correctly", () {
    final input = 'Game 17: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green';
    final parser = GameParser();

    final result = parser.parse(input);

    expect(result.id, 17);
    expect(result.sets.length, 3);

    final firstSet = result.sets[0];
    expect(firstSet.redCount, 4);
    expect(firstSet.greenCount, 0);
    expect(firstSet.blueCount, 3);

    final secondSet = result.sets[1];
    expect(secondSet.redCount, 1);
    expect(secondSet.greenCount, 2);
    expect(secondSet.blueCount, 6);

    final thirdSet = result.sets[2];
    expect(thirdSet.redCount, 0);
    expect(thirdSet.greenCount, 2);
    expect(thirdSet.blueCount, 0);
  });
}
