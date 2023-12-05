import 'package:advent_of_code/solutions/day_05/model/almanac_map_range.dart';
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
}
