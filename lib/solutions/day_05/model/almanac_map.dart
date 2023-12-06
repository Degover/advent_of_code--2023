import 'package:advent_of_code/solutions/day_05/model/almanac_map_range.dart';
import 'package:advent_of_code/solutions/day_05/model/range.dart';

class AlmanacMap {
  final String sourceCategory;
  final String destinationCategory;
  final List<AlmanacMapRange> ranges;

  AlmanacMap(
      {required this.sourceCategory,
      required this.destinationCategory,
      required this.ranges}) {
    ranges.sort((a, b) => a.sourceRange.start.compareTo(b.sourceRange.start));
  }

  int map(int source) {
    final mapRange = ranges.where((range) => range.canMap(source)).firstOrNull;
    if (mapRange != null) return mapRange.map(source);
    return source;
  }

  List<Range> mapRange(Range sourceRange) {
    final resultRanges = ranges
        .where((range) => range.canMapRange(sourceRange))
        .map((range) => range.mapRange(sourceRange))
        .toList(growable: true);

    if (sourceRange.start < ranges.first.sourceRange.start) {
      if (sourceRange.end < ranges.first.sourceRange.start) {
        return [sourceRange];
      }

      final diff = ranges.first.sourceRange.start - sourceRange.start;
      resultRanges.add(Range(start: sourceRange.start, length: diff));
    }

    if (sourceRange.end > ranges.last.sourceRange.end) {
      if (sourceRange.start > ranges.last.sourceRange.end) {
        return [sourceRange];
      }

      final diff = sourceRange.end - ranges.last.sourceRange.end;
      resultRanges
          .add(Range(start: ranges.last.sourceRange.end + 1, length: diff));
    }

    return resultRanges;
  }
}
