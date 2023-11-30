import 'package:advent_of_code/shared/input.dart';

abstract interface class Solution {
  Future<String> firstPart(Input input);
  Future<String> secondPart(Input input);
}
