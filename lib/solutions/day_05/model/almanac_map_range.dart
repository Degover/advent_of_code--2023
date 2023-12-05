class AlmanacMapRange {
  int sourceStart;
  int destinationStart;
  int length;

  AlmanacMapRange(
      {required this.sourceStart,
      required this.destinationStart,
      required this.length});

  bool canMap(int source) =>
      source >= sourceStart && source <= sourceStart + length - 1;

  int map(int source) {
    final sourceDiff = source - sourceStart;
    return destinationStart + sourceDiff;
  }
}
