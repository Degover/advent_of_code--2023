import 'package:advent_of_code/shared/file_input.dart';
import 'package:advent_of_code/solutions/day_05/day_05.dart';

void main(List<String> arguments) async {
  final fileInput = FileInput('./inputs/05.txt');
  final solution = DayFive();

  final result = await solution.secondPart(fileInput);
  print(result);
}
