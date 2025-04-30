import 'dart:math' as math;

Map<String, int> hist = {'a': 23, 'b': 100};

sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
  Square(length: var l) => l * l,
  Circle(radius: var r) => math.pi * r * r,
};
main() {
  for (var MapEntry(:key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
  var data = {
    'user': ['Lily', 13],
  };
  // var {'user': [name, age]} = data;
  if (data case {'user': [String name, int age]}) {
    print('User $name is $age years old.');
  }
  // print('$name is $age years old');
}
