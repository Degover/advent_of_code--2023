import 'package:advent_of_code/solutions/day_05/model/range.dart';

class AlmanacMapRange {
  final Range sourceRange;
  final Range destinyRange;

  AlmanacMapRange(
      {required sourceStart, required destinationStart, required length})
      : sourceRange = Range(start: sourceStart, length: length),
        destinyRange = Range(start: destinationStart, length: length);

  bool canMap(int source) => sourceRange.contains(source);

  int map(int source) {
    final sourceDiff = source - sourceRange.start;
    return destinyRange.start + sourceDiff;
  }
}
