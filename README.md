# Handling FormatException in Dart's jsonDecode

This example demonstrates a common error in Dart when dealing with JSON decoding: the `FormatException`.  The `jsonDecode` function throws a `FormatException` when it encounters invalid JSON data. This example shows how to gracefully handle this error.

The `bug.dart` file contains code that can throw a `FormatException` if it receives bad JSON. `bugSolution.dart` shows how to properly handle the exception.

## How to run

1. Save the code in `bug.dart` and `bugSolution.dart`.
2. Run from the command line using the Dart VM: `dart bug.dart` and `dart bugSolution.dart`.

This repository demonstrates robust error handling for JSON decoding in Dart.