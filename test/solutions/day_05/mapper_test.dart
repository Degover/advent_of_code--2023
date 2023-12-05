import 'package:advent_of_code/solutions/day_05/mapper.dart';
import 'package:advent_of_code/solutions/day_05/model/almanac_map.dart';
import 'package:advent_of_code/solutions/day_05/model/almanac_map_range.dart';
import 'package:test/test.dart';

void main() {
  final maps = [
    AlmanacMap(sourceCategory: 'seed', destinationCategory: 'soil', ranges: [
      AlmanacMapRange(sourceStart: 98, destinationStart: 50, length: 2),
      AlmanacMapRange(sourceStart: 50, destinationStart: 52, length: 48),
    ]),
    AlmanacMap(
        sourceCategory: 'soil',
        destinationCategory: 'fertilizer',
        ranges: [
          AlmanacMapRange(sourceStart: 15, destinationStart: 0, length: 37),
          AlmanacMapRange(sourceStart: 52, destinationStart: 37, length: 2),
          AlmanacMapRange(sourceStart: 0, destinationStart: 39, length: 15),
        ]),
  ];

  test('should map complete path correctly', () {
    final mapper = Mapper();

    expect(mapper.mapAll(79, maps), equals(81));
    expect(mapper.mapAll(14, maps), equals(53));
    expect(mapper.mapAll(55, maps), equals(57));
    expect(mapper.mapAll(13, maps), equals(52));
  });
}
