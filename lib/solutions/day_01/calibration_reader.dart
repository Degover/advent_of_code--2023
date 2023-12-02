class CalibrationReader {
  final _digitRegex = RegExp(r'\d');
  final _spelledDigitRegex =
      RegExp(r'one|two|three|four|five|six|seven|eight|nine|\d');

  int readCalibrationValue(String line) {
    final matches = _digitRegex.allMatches(line);
    final firstNumber = matches.first.group(0);
    if (firstNumber == null) {
      throw Exception("Excepted a first number on line $line");
    }

    final lastNumber = matches.last.group(0);
    if (lastNumber == null) {
      throw Exception("Excepted a last number on line $line");
    }

    return int.parse(firstNumber + lastNumber);
  }

  int readSpelledCalibrationValue(String line) {
    final matches = _spelledDigitRegex.allMatches(line);
    final firstDigit = readDigit(matches.first.group(0)!);

    final lastDigitMatch = matches.last;
    final alternativeLastDigitMatches =
        _spelledDigitRegex.allMatches(line.substring(lastDigitMatch.start + 1));

    final lastDigit = readDigit(alternativeLastDigitMatches.isEmpty
        ? lastDigitMatch.group(0)!
        : alternativeLastDigitMatches.last.group(0)!);

    return int.parse(firstDigit + lastDigit);
  }

  String readDigit(String digit) {
    return switch (digit) {
      'one' => '1',
      'two' => '2',
      'three' => '3',
      'four' => '4',
      'five' => '5',
      'six' => '6',
      'seven' => '7',
      'eight' => '8',
      'nine' => '9',
      _ => digit,
    };
  }
}
