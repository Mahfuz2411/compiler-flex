# 🧠 Flex Practice Tasks

This repository contains basic to intermediate level tasks designed to help you practice and learn **Flex (Lexical Analyzer)**. Start from the basics and work your way up!

---

## 🧪 Level 1: Beginner (Single Token Types)

These tasks will help you understand pattern matching and output.

### 1. Detect Integers
Match any sequence of digits (e.g., `123`) and print:
```
NUMBER: 123
```

---

### 2. Detect Words
Match words made of alphabets and print:
```
WORD: hello
```

---

### 3. Match Operators
Match operators: `+`, `-`, `*`, `/`, `=`, `==` and print:
```
PLUS
MINUS
MULTIPLY
DIVIDE
ASSIGN
EQUALS
```

---

### 4. Ignore Whitespace
Ignore spaces, tabs, and newlines — don’t print anything.

---

### 5. Match Variable Names
Match valid variable names (e.g., `x`, `name1`, `_value`) and print:
```
IDENTIFIER: name1
```

---

## ⚙️ Level 2: Intermediate (Multiple Token Types)

These involve combining multiple types of tokens.

### 6. Match Keywords and Identifiers
Detect programming keywords like `if`, `else`, `while`:
```
KEYWORD: if
IDENTIFIER: myVar
```

---

### 7. Match Comments
Match and skip C-style single-line comments:
```c
// This is a comment
```
No output should be printed.

---

### 8. Match Strings
Detect anything inside double quotes:
```
STRING: Hello World!
```

---

### 9. Count Digits vs. Letters
Maintain and print counts for how many digits and how many letters appear in the input.

---

## 🧮 Level 3: Small Projects

### 10. Line Counter
Count how many lines are in the input and print:
```
TOTAL LINES: 5
```

---

### 11. Word and Character Counter
At the end of input, print total:
```
WORDS: 15
CHARACTERS: 87
```

---

### 12. Simple Calculator Tokenizer
Input:
```
12 + 45 - x * 9 / y
```
Output:
```
NUMBER: 12
PLUS
NUMBER: 45
MINUS
IDENTIFIER: x
MULTIPLY
NUMBER: 9
DIVIDE
IDENTIFIER: y
```

---

## 🚀 Bonus Challenges

### 13. Match Email Addresses
Detect email addresses like:
```
EMAIL: example@mail.com
```

---

### 14. Match Integers vs Floats
Input:
```
100 3.14 -5.0
```
Output:
```
INTEGER: 100
FLOAT: 3.14
FLOAT: -5.0
```

---

### 15. Detect Punctuation
Match punctuation marks like `. , ; : ! ?` and print:
```
PUNCTUATION: !
```

---

## ✅ How to Run

1. Save the task in a `.l` file (e.g., `task1.l`)
2. Use Flex and GCC:
   ```
   flex task1.l
   gcc lex.yy.c -o task1
   ./task1
   ```
3. Enter input manually or redirect a file:
   ```
   ./task1 < input.txt
   ```

Happy coding! 🚀
