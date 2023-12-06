import 'package:advent_of_code/solutions/day_05/parser.dart';
import 'package:test/test.dart';

import '../../test_helper/test_input.dart';

void main() {
  test('should parse range correctly', () {
    final parser = Parser();
    final inputLine = '49 53 8';

    final result = parser.parseMapRange(inputLine);

    expect(result.sourceRange.start, equals(53));
    expect(result.sourceRange.length, equals(8));
    expect(result.destinyRange.start, equals(49));
  });

  test('should parse almanac correctly', () async {
    final input = TestInput([
      'seeds: 79 14 55 13',
      '',
      'seed-to-soil map:',
      '50 98 2',
      '52 50 48',
      '',
      'soil-to-fertilizer map:',
      '0 15 37',
      '37 52 2',
      '39 0 15',
    ]);
    final parser = Parser();

    final result = await parser.parseAlmanac(input);

    expect(result.seeds, orderedEquals([79, 14, 55, 13]));
    expect(result.maps, hasLength(2));

    expect(result.seedRanges, hasLength(2));
    expect(result.seedRanges[0].start, equals(79));
    expect(result.seedRanges[0].end, equals(92));
    expect(result.seedRanges[0].length, equals(14));
    expect(result.seedRanges[1].start, equals(55));
    expect(result.seedRanges[1].end, equals(67));
    expect(result.seedRanges[1].length, equals(13));

    expect(result.maps[0].sourceCategory, equals('seed'));
    expect(result.maps[0].destinationCategory, equals('soil'));
    expect(result.maps[0].ranges, hasLength(2));

    expect(result.maps[1].sourceCategory, equals('soil'));
    expect(result.maps[1].destinationCategory, equals('fertilizer'));
    expect(result.maps[1].ranges, hasLength(3));
  });
}
