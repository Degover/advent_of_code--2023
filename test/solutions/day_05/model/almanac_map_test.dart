import 'package:advent_of_code/solutions/day_05/model/almanac_map.dart';
import 'package:advent_of_code/solutions/day_05/model/almanac_map_range.dart';
import 'package:test/test.dart';

void main() {
  test('should map source within a range correctly', () {
    final map = AlmanacMap(
        sourceCategory: 'source',
        destinationCategory: 'destiny',
        ranges: [
          AlmanacMapRange(sourceStart: 98, destinationStart: 50, length: 2),
          AlmanacMapRange(sourceStart: 50, destinationStart: 52, length: 48),
        ]);

    expect(map.map(51), equals(53));
    expect(map.map(98), equals(50));
    expect(map.map(99), equals(51));
  });

  test('should map source outside of a range correctly', () {
    final map = AlmanacMap(
        sourceCategory: 'source',
        destinationCategory: 'destiny',
        ranges: [
          AlmanacMapRange(sourceStart: 98, destinationStart: 50, length: 2),
          AlmanacMapRange(sourceStart: 50, destinationStart: 52, length: 48),
        ]);

    expect(map.map(1), equals(1));
    expect(map.map(49), equals(49));
    expect(map.map(100), equals(100));
  });
}
