import 'package:advent_of_code/solutions/day_05/day_05.dart';
import 'package:test/test.dart';

import '../../test_helper/test_input.dart';

void main() {
  test('should solve first part correctly', () async {
    final input = TestInput([]);
    final solution = DayFive();

    final result = await solution.firstPart(input);

    expect(result, 'unresolved');
  });

  test('should solve second part correctly', () async {
    final input = TestInput([]);
    final solution = DayFive();

    final result = await solution.secondPart(input);

    expect(result, 'unresolved');
  });
}
