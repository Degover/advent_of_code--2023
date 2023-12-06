import 'package:advent_of_code/solutions/day_05/model/almanac_map.dart';
import 'package:advent_of_code/solutions/day_05/model/range.dart';

class Almanac {
  final List<int> seeds;
  final List<Range> seedRanges;
  final List<AlmanacMap> maps;

  Almanac({required this.seeds, required this.maps})
      : seedRanges = List<Range>.generate(
            (seeds.length / 2).floor(),
            (index) =>
                Range(start: seeds[index * 2], length: seeds[(index * 2) + 1]));
}
