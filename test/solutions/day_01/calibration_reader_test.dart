import 'package:advent_of_code/solutions/day_01/calibration_reader.dart';
import 'package:test/test.dart';

void main() {
  test("should read calibration values correctly", () {
    final testData = [
      ("1abc2", 12),
      ("pqr3stu8vwx", 38),
      ("a1b2c3d4e5f", 15),
      ("treb7uchet", 77),
    ];

    final reader = CalibrationReader();
    for (final (input, expectedResult) in testData) {
      final result = reader.readCalibrationValue(input);
      expect(result, expectedResult);
    }
  });

  for (final (input, expectedResult) in [
    ('two1nine', 29),
    ('eightwothree', 83),
    ('abcone2threexyz', 13),
    ('xtwone3four', 24),
    ('4nineeightseven2', 42),
    ('zoneight234', 14),
    ('7pqrstsixteen', 76),
    ('treb7uchet', 77),
    ('2twoneh', 21)
  ]) {
    test("should read value with spelled digits on $input input", () {
      final reader = CalibrationReader();
      final result = reader.readSpelledCalibrationValue(input);
      expect(result, expectedResult);
    });
  }
}
