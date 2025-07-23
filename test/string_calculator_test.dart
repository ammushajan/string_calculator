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
    test('should return the sum of two numbers', () {
      expect(calculator.add("1,2"), 3);
      expect(calculator.add("4,0"), 4);
    });
    test('should return the sum of multiple numbers', () {
      expect(calculator.add("1,2,3"), 6);
      expect(calculator.add("1,2,5,6,7"), 21);
      expect(calculator.add("10,2,4"), 16);
    });
    test('should handle new lines between numbers', () {
      expect(calculator.add('1\n2,3'), 6);
      expect(calculator.add('4,5\n6'), 15);
      expect(calculator.add('4\n5\n6'), 15);
    });
    test('should support a custom delimiter', () {
      expect(calculator.add('//;\n1;2'), 3);
      expect(calculator.add('//|\n1|2|3'), 6);
      expect(calculator.add('//##\n2##3##4##5'), 14);
    });
    test('should throw an exception listing all negative numbers', () {
      expect(
        () => calculator.add('1,-2,3,-4'),
        throwsA(
          predicate(
            (e) =>
                e.toString() == 'Exception: negative numbers not allowed -2,-4',
          ),
        ),
      );
    });
    test('should ignore numbers greather than 1000', () {
      expect(calculator.add('2,1001'), 2);
      expect(calculator.add('5,10000'), 5);
    });
  });
}
