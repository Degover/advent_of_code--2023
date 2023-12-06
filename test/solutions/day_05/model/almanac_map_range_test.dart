import 'package:advent_of_code/solutions/day_05/model/almanac_map_range.dart';
import 'package:advent_of_code/solutions/day_05/model/range.dart';
import 'package:test/test.dart';

void main() {
  test('canMap should return true when source is in range', () {
    final mapRange =
        AlmanacMapRange(sourceStart: 10, destinationStart: 341, length: 10);

    expect(mapRange.canMap(14), isTrue);
    expect(mapRange.canMap(10), isTrue);
    expect(mapRange.canMap(19), isTrue);
  });

  test('canMap should return false when source is not in range', () {
    final mapRange =
        AlmanacMapRange(sourceStart: 10, destinationStart: 341, length: 10);

    expect(mapRange.canMap(9), isFalse);
    expect(mapRange.canMap(21), isFalse);
    expect(mapRange.canMap(20), isFalse);
  });

  test('should map a value correctly', () {
    final mapRange =
        AlmanacMapRange(sourceStart: 10, destinationStart: 341, length: 10);

    expect(mapRange.map(10), equals(341));
    expect(mapRange.map(14), equals(345));
  });

  test('map should return mapped range for equal range', () {
    final mapRange =
        AlmanacMapRange(sourceStart: 10, destinationStart: 20, length: 10);
    final range = Range(start: 10, length: 10);

    final result = mapRange.mapRange(range);

    expect(result.start, equals(20));
    expect(result.end, equals(29));
    expect(result.length, equals(10));
  });

  test('map should return mapped range intersecting at lower values', () {
    final mapRange =
        AlmanacMapRange(sourceStart: 10, destinationStart: 20, length: 10);
    final range = Range(start: 5, length: 10);

    final result = mapRange.mapRange(range);

    expect(result.start, equals(20));
    expect(result.end, equals(24));
    expect(result.length, equals(5));
  });

  test('map should return mapped range intersecting at greater values', () {
    final mapRange =
        AlmanacMapRange(sourceStart: 10, destinationStart: 20, length: 10);
    final range = Range(start: 15, length: 10);

    final result = mapRange.mapRange(range);

    expect(result.start, equals(25));
    expect(result.end, equals(29));
    expect(result.length, equals(5));
  });

  test('map should return mapped range contained within range', () {
    final mapRange =
        AlmanacMapRange(sourceStart: 10, destinationStart: 20, length: 10);
    final range = Range(start: 12, length: 2);

    final result = mapRange.mapRange(range);

    expect(result.start, equals(22));
    expect(result.end, equals(23));
    expect(result.length, equals(2));
  });

  test('map should return mapped range that contains range', () {
    final mapRange =
        AlmanacMapRange(sourceStart: 10, destinationStart: 20, length: 10);
    final range = Range(start: 8, length: 20);

    final result = mapRange.mapRange(range);

    expect(result.start, equals(20));
    expect(result.end, equals(29));
    expect(result.length, equals(10));
  });
}
