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

  test('intersects should return true for equal range', () {
    final range = Range(start: 10, length: 10);
    expect(range.intersects(range), isTrue);
  });

  test('intersects should return true for range intersecting at lower values',
      () {
    final range = Range(start: 10, length: 10);
    final inputRange = Range(start: 5, length: 10);

    expect(range.intersects(inputRange), isTrue);
  });

  test('intersects should return true for range intersecting at greater values',
      () {
    final range = Range(start: 10, length: 10);
    final inputRange = Range(start: 15, length: 10);

    expect(range.intersects(inputRange), isTrue);
  });

  test('intersects should return true for range contained within range', () {
    final range = Range(start: 10, length: 10);
    final inputRange = Range(start: 12, length: 2);

    expect(range.intersects(inputRange), isTrue);
  });

  test('intersects should return true for range that contains range', () {
    final range = Range(start: 10, length: 10);
    final inputRange = Range(start: 8, length: 20);

    expect(range.intersects(inputRange), isTrue);
  });

  test('intersects should return false for range that does not intersects', () {
    final range = Range(start: 10, length: 10);

    expect(range.intersects(Range(start: 1, length: 5)), isFalse);
    expect(range.intersects(Range(start: 1, length: 9)), isFalse);
    expect(range.intersects(Range(start: 20, length: 9)), isFalse);
  });
}
