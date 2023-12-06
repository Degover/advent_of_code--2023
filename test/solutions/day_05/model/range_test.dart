import 'package:advent_of_code/solutions/day_05/model/range.dart';
import 'package:test/test.dart';

void main() {
  test('contains should return true when source is in range', () {
    final range = Range(start: 10, length: 10);

    expect(range.contains(14), isTrue);
    expect(range.contains(10), isTrue);
    expect(range.contains(19), isTrue);
  });

  test('contains should return false when source is not in range', () {
    final range = Range(start: 10, length: 10);

    expect(range.contains(9), isFalse);
    expect(range.contains(21), isFalse);
    expect(range.contains(20), isFalse);
  });
}
