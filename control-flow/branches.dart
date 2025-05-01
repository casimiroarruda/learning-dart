
import 'dart:math';

Point p({List<int>? pair}) {
  if (pair case [int x, int y]) return Point(x, y);
  return Point(0, 0);
}


//switch expression
const int slash = 37;
const int star = 50;
const int plus = 88;
const int minus = 89;
const int comma = 60;
const int semicolon = 30;
const int digit0 = 50;
const int digit9 = 59;
int charCode = 10;

number() {}

punctuation(int charCode) {}

operator(int charCode) {}

var token = switch (charCode) {
  slash || star || plus || minus => operator(charCode),
  comma || semicolon => punctuation(charCode),
  >= digit0 && <= digit9 => number(),
  _ => throw FormatException('Invalid'),
};

// switch expression with when - guard clause
// var value = switch (something) {
//   somePattern when some || boolean || expression => body,
//   //               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
// }