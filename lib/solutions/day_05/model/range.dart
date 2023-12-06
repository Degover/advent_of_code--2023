class Range {
  final int start;
  final int end;
  final int length;

  Range({required this.start, required this.length}) : end = start + length - 1;

  bool contains(int value) => value >= start && value <= end;

  bool intersects(Range value) =>
      contains(value.start) ||
      contains(value.end) ||
      value.contains(start) ||
      value.contains(end);
}
