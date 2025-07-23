class StringCalculator {
  ///[add] calculates the sum of numbers in a string.
  int add(String input) {
    // If the input is empty, return 0.
    if (input.isEmpty) return 0;
    // Parse the string to int for single number strings.
    return int.parse(input);
  }
}
