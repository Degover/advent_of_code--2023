import 'package:advent_of_code/shared/input.dart';
import 'package:advent_of_code/solutions/day_05/mapper.dart';
import 'package:advent_of_code/solutions/day_05/parser.dart';
import 'package:advent_of_code/solutions/solution.dart';

class DayFive implements Solution {
  @override
  Future<String> firstPart(Input input) async {
    final parser = Parser();
    final mapper = Mapper();

    final almanac = await parser.parseAlmanac(input);

    final locations =
        almanac.seeds.map((seed) => mapper.mapAll(seed, almanac.maps));

    return locations
        .reduce((value, element) => value < element ? value : element)
        .toString();
  }

  @override
  Future<String> secondPart(Input input) async {
    return 'unresolved';
  }
}
