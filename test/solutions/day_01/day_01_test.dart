import 'package:advent_of_code/solutions/day_01/day_01.dart';
import 'package:test/test.dart';

import '../../test_helper/test_input.dart';

void main() {
  test('should solve first part correctly', () async {
    final input = TestInput([
      '1abc2',
      'pqr3stu8vwx',
      'a1b2c3d4e5f',
      'treb7uchet',
    ]);
    final solution = DayOne();

    final result = await solution.firstPart(input);

    expect(result, '142');
  });

  test('should solve second part correctly', () async {
    final input = TestInput([
      'two1nine',
      'eightwothree',
      'abcone2threexyz',
      'xtwone3four',
      '4nineeightseven2',
      'zoneight234',
      '7pqrstsixteen',
    ]);
    final solution = DayOne();

    final result = await solution.secondPart(input);

    expect(result, '281');
  });
}
