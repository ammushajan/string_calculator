import 'package:test/test.dart';

import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    final calculator = StringCalculator();
    test('should return 0 for an empty string', () {
      expect(calculator.add(""), 0);
    });
    test('should return the number itself for a single number string', () {
      expect(calculator.add("1"), 1);
      expect(calculator.add("4"), 4);
    });
  });
}
