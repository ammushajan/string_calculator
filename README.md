# String-Calculator
This project implements a **String Calculator** in Dart using the **Test-Driven Development (TDD)** approach.
It parses a string of numbers separated by delimiters and returns their sum, with support for advanced input formats and error handling.

## Features
- Comma-separated multiple numbers: `"1,2,3"` → `6`
- Newline as delimiter: `"1\n2,3"` → `6`
- Custom delimiter: `"//;\n1;2"` → `3`
- Ignore numbers > 1000: `"2,1001"` → `2`
- Custom delimiters of any length: `"//[***]\n1***2***3"` → `6`
- Multiple delimiters: `"//[*][%]\n1*2%3"` → `6`
- Multiple long delimiters: `"//[***][%%]\n1***2%%3"` → `6`
- Throws exception on negative numbers with full list: `"-1,-2"` → `Exception: negative numbers not allowed -1,-2`