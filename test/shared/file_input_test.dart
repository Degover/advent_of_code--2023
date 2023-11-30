import 'package:advent_of_code/shared/file_input.dart';
import 'package:test/test.dart';

void main() {
  test('should read file correctly', () async {
    final fileInput = FileInput('./test/fake_input/fake.txt');

    var expected = 1;
    await for (final line in fileInput.getInput()) {
      expect(line, expected.toString());
      expected++;
    }

    expect(expected, 6);
  });
}
