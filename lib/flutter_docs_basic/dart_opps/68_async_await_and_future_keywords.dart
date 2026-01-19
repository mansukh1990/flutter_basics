/*
Async: The async keyword is used to mark a function as asynchronous.
       An asynchronous function is a function that can perform a long-running operation without blocking the execution of the program.
       When an asynchronous function is called, it returns a Future object that represents the eventual result of the function.

Await: The await keyword is used to pause the execution of an asynchronous function until a Future completes.
       When an asynchronous function is called with the await keyword,
       the function will pause at that point and wait for the Future to complete before continuing.
       This allows you to write asynchronous code that looks and behaves like synchronous code,
       making it easier to read and understand.

Future: The Future class is a core class in Dart that represents a value that may not be available yet.
        A Future can be used to represent the result of an asynchronous operation,
        and can be used with the await keyword to pause the execution of a function until the Future completes.
 */
void main() async {
  print("Line 1");
  await displayL();
  print("Line 3");
}

Future<void> displayL() async {
  Future.delayed(Duration(seconds: 5), () => print("Line 2"));
}
