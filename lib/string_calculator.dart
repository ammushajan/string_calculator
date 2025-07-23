class StringCalculator {
  ///[add] calculates the sum of numbers in a string.
  int add(String input) {
    // If the input is empty, return 0.
    if (input.isEmpty) return 0;
    // Get delimiters and numbers from the input string.
    final delimitersAndNumbers = getDelimitersAndNumbers(input);
    String delimiter = delimitersAndNumbers['delimiter']!;
    input = delimitersAndNumbers['input']!;
    // Split the string by the delimiter.
    List<String> numberList =
        input
            .split(RegExp(delimiter))
            // Filter out numbers greater than 1000.
            .where((n) => int.parse(n) <= 1000)
            .toList();
    // Check for negative numbers and throw an exception if any are found.
    _checkForNegativeNumbers(numberList);
    // Convert the string numbers to integers and return their sum.
    return numberList.map(int.parse).reduce((a, b) => a + b);
  }

  ///[getDelimitersAndNumbers] extracts delimiters and numbers from the input string.
  /// It supports both default delimiters (comma and newline) and custom delimiters.
  /// Returns a map with 'delimiter' and 'input' keys.
  Map<String, String> getDelimitersAndNumbers(String input) {
    String delimiterPattern = ',|\n';
    // If the input starts with a custom delimiter, extract it.
    if (input.startsWith('//')) {
      // Extracts the part between // and the first \n
      final delimiterSectionEnd = input.indexOf('\n');
      final delimiterSection = input.substring(2, delimiterSectionEnd);
      // Use the rest of the string as input
      input = input.substring(delimiterSectionEnd + 1);

      // This regex matches each custom delimiter inside [ and ].
      final delimiterMatches = RegExp(
        r'\[(.*?)\]',
      ).allMatches(delimiterSection);
      if (delimiterMatches.isNotEmpty) {
        // Join all delimiters into a regex pattern
        delimiterPattern = delimiterMatches
            .map((m) => RegExp.escape(m.group(1)!))
            .join('|');
      } else {
        // Single delimiter: //;\n
        delimiterPattern = RegExp.escape(delimiterSection);
      }
    }
    return {'delimiter': delimiterPattern, 'input': input};
  }

  ///[_checkForNegativeNumbers] checks for negative numbers in the list.
  /// If any negative numbers are found, an exception is thrown listing them.
  void _checkForNegativeNumbers(List<String> numbers) {
    // Get negative numbers
    final negatives = numbers.where((n) => int.parse(n) < 0).toList();
    // If there are negative numbers, throw an exception listing them.
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }
  }
}
