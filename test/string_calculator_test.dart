import 'package:test/test.dart';

import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    final calculator = StringCalculator();
    test('should return 0 for an empty string', () {
      expect(calculator.add(""), 0);
    });
  });
}
