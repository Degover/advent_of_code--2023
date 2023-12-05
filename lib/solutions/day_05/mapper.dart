import 'package:advent_of_code/solutions/day_05/model/almanac_map.dart';

class Mapper {
  int mapAll(int source, List<AlmanacMap> maps) =>
      maps.fold(source, (value, map) => map.map(value));
}
