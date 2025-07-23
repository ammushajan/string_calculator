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


## Test Results 
All test cases were written using the Dart `test` package and follow a Test-Driven Development (TDD) approach.
<img width="1590" height="1234" alt="image" src="https://github.com/user-attachments/assets/f6d45941-db71-4a67-bfe6-03682571b58f" />
<img width="1590" height="1234" alt="image" src="https://github.com/user-attachments/assets/63bd8b80-af19-4dee-a5f9-cc8b4e6862f7" />
<img width="1590" height="136" alt="image" src="https://github.com/user-attachments/assets/1e063c98-a40f-4c56-8162-67f4e08baba4" />


