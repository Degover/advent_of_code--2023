import 'package:advent_of_code/solutions/day_05/model/almanac_map_range.dart';

class AlmanacMap {
  final String sourceCategory;
  final String destinationCategory;
  final List<AlmanacMapRange> ranges;

  AlmanacMap(
      {required this.sourceCategory,
      required this.destinationCategory,
      required this.ranges});

  int map(int source) {
    final mapRange = ranges.where((range) => range.canMap(source)).firstOrNull;
    if (mapRange != null) return mapRange.map(source);
    return source;
  }
}
