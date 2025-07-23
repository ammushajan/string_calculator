class StringCalculator {
  ///[add] calculates the sum of numbers in a string.
  int add(String input) {
    // If the input is empty, return 0.
    if (input.isEmpty) return 0;
    // Split the string by comma
    List<String> numberStrings = input.split(',');
    // If the input contains multiple numbers, return the sum of those numbers.
    return numberStrings.map(int.parse).reduce((a, b) => a + b);
  }
}
