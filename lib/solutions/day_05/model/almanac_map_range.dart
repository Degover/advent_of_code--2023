import 'package:advent_of_code/solutions/day_05/model/range.dart';

class AlmanacMapRange {
  final Range sourceRange;
  final Range destinyRange;

  AlmanacMapRange(
      {required sourceStart, required destinationStart, required length})
      : sourceRange = Range(start: sourceStart, length: length),
        destinyRange = Range(start: destinationStart, length: length);

  bool canMap(int source) => sourceRange.contains(source);

  bool canMapRange(Range source) => sourceRange.intersects(source);

  int map(int source) {
    final sourceDiff = source - sourceRange.start;
    return destinyRange.start + sourceDiff;
  }

  Range mapRange(Range source) {
    if (!canMapRange(source)) {
      throw 'Cant map source range';
    }

    final newRangeStart = map(
        source.start >= sourceRange.start ? source.start : sourceRange.start);

    final newRangeEnd =
        map(source.end <= sourceRange.end ? source.end : sourceRange.end);

    return Range(start: newRangeStart, length: newRangeEnd - newRangeStart + 1);
  }
}
