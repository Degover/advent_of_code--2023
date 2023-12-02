import 'package:advent_of_code/shared/input.dart';
import 'package:advent_of_code/solutions/day_01/calibration_reader.dart';
import 'package:advent_of_code/solutions/solution.dart';

class DayOne implements Solution {
  @override
  Future<String> firstPart(Input input) async {
    var sum = 0;
    final reader = CalibrationReader();
    await for (final line in input.getInput()) {
      sum += reader.readCalibrationValue(line);
    }

    return sum.toString();
  }

  @override
  Future<String> secondPart(Input input) async {
    var sum = 0;
    final reader = CalibrationReader();
    await for (final line in input.getInput()) {
      sum += reader.readSpelledCalibrationValue(line);
    }

    return sum.toString();
  }
}
