class StringCalculator {
  ///[add] calculates the sum of numbers in a string.
  int add(String input) {
    // If the input is empty, return 0.
    if (input.isEmpty) return 0;
    // Check for custom delimiter
    String delimiter = ',|\n';
    // If the input starts with a custom delimiter, extract it.
    if (input.startsWith('//')) {
      final parts = input.split('\n');
      // Get delimiter from "//;\n", considering ; as a custom delimiter
      delimiter = RegExp.escape(parts[0].substring(2));
      // Use the rest of the string as input
      input = parts[1];
    }

    // Split the string by the delimiter.
    List<String> numberList = input.split(RegExp(delimiter));
    // Get negative numbers
    final negatives = numberList.where((n) => int.parse(n) < 0).toList();
    // If there are negative numbers, throw an exception listing them.
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }
    // Convert the string numbers to integers and return their sum.
    return numberList.map(int.parse).reduce((a, b) => a + b);
  }
}
