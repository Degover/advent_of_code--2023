import 'package:advent_of_code/shared/input.dart';
import 'package:advent_of_code/solutions/day_05/model/almanac.dart';
import 'package:advent_of_code/solutions/day_05/model/almanac_map.dart';
import 'package:advent_of_code/solutions/day_05/model/almanac_map_range.dart';

class Parser {
  Future<Almanac> parseAlmanac(Input input) async {
    final inputStream = input.getInput();
    var seeds = List<int>.empty();

    final maps = List<AlmanacMap>.empty(growable: true);
    var sourceCategory = '';
    var destinationCategory = '';
    var mapRanges = List<AlmanacMapRange>.empty(growable: true);

    await for (final line in inputStream) {
      if (seeds.isEmpty) {
        seeds =
            line.substring(7).split(' ').map((str) => int.parse(str)).toList();
      } else if (line == '') {
        if (sourceCategory == '') continue;

        maps.add(AlmanacMap(
            sourceCategory: sourceCategory,
            destinationCategory: destinationCategory,
            ranges: mapRanges));

        sourceCategory = '';
        destinationCategory = '';
        mapRanges = List<AlmanacMapRange>.empty(growable: true);
      } else if (sourceCategory == '') {
        [sourceCategory, _, destinationCategory] =
            line.split(' ')[0].split('-');
      } else {
        mapRanges.add(parseMapRange(line));
      }
    }

    maps.add(AlmanacMap(
        sourceCategory: sourceCategory,
        destinationCategory: destinationCategory,
        ranges: mapRanges));

    return Almanac(seeds: seeds, maps: maps);
  }

  AlmanacMapRange parseMapRange(String inputLine) {
    final [destinationStart, sourceStart, length] = inputLine.split(' ');

    return AlmanacMapRange(
        sourceStart: int.parse(sourceStart),
        destinationStart: int.parse(destinationStart),
        length: int.parse(length));
  }
}
