class StrokeCap {
  static var round;
}

class Colors {
  static var black;
}

class Paint {
  set strokeWidth(double strokeWidth) {}

  set strokeCap(strokeCap) {}

  set color(color) {}
}


main() {
  assert(2 + 3 == 5);
  assert(-(-1) == 1);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder
  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  final value = 0x22;
  final bitmask = 0x0f;

  assert((value & bitmask) == 0x02); // AND
  assert((value & ~bitmask) == 0x20); // AND NOT
  assert((value | bitmask) == 0x2f); // OR
  assert((value ^ bitmask) == 0x2d); // XOR

  assert((value << 4) == 0x220); // Shift left
  assert((value >> 4) == 0x02); // Shift right

  // Shift right example that results in different behavior on web
  // because the operand value changes when masked to 32 bits:
  assert((-value >> 4) == -0x03);

  assert((value >>> 4) == 0x02); // Unsigned shift right
  assert((-value >>> 4) > 0); // Unsigned shift right

  //cascade
  var paint =
    Paint()
      ?..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;
  var a = [1, 2, 3];
  var b = [4, 5, 6];
  var combined = [...a, ...b];
  print(combined); // Output: [1, 2, 3, 4, 5, 6]
}

