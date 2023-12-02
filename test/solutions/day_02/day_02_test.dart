import 'package:advent_of_code/solutions/day_02/day_02.dart';
import 'package:test/test.dart';

import '../../test_helper/test_input.dart';

void main() {
  test("should resolve first part correctly", () {
    final input = TestInput([
      'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green',
      'Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue',
      'Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red',
      'Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red',
      'Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green',
    ]);
    final solution = DayTwo();

    final result = solution.firstPart(input);

    expect(result, 'unresolved');
  });

  test("should resolve second part correctly", () {
    final input = TestInput([
      'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green',
      'Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue',
      'Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red',
      'Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red',
      'Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green',
    ]);
    final solution = DayTwo();

    final result = solution.secondPart(input);

    expect(result, 'unresolved');
  });
}
