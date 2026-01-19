/*
Exception Handling
 - The execution of the program is terminated abnormally.
  1. DeferredLoadException
    - Thrown when a deferred library fails to load.
  2. FormatException
    - The exception is thrown when a string or some other data does not have
       an expected format and cannot be processed.
  3. IntegerDivisionByZeroException is deprecated isplace of use UnsupportedError
    - The Exception is thrown when a number is divided by zero.
  4. IOException
    - Base class for all input - output - related exceptions.
  5. IsolateSpawnException
    - Thrown when an isolate cannot be created.
  6. OSError
    - An exception holding information about an error from the operating system.
  7.TimeoutException
    - Thrown when a scheduled timeout happens while waiting for an async result.
 */

void main() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } on UnsupportedError {
    print("cannot divide by zero");
  }
}
