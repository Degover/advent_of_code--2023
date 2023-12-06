import 'package:advent_of_code/solutions/day_05/model/almanac_map.dart';
import 'package:advent_of_code/solutions/day_05/model/range.dart';

class Mapper {
  int mapAll(int source, List<AlmanacMap> maps) =>
      maps.fold(source, (value, map) => map.map(value));

  List<Range> mapAllRanges(Range source, List<AlmanacMap> maps) => maps.fold(
      [source],
      (mappedRanges, map) => mappedRanges
          .map((range) => map.mapRange(range))
          .expand((range) => range)
          .toList());
}
