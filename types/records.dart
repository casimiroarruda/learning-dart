var record = ('first', a: 2, b: true, 'last');
(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

// Record type annotation in a variable declaration:
late (String, int) record2;
// Record type annotation in a variable declaration:
late ({int a, bool b}) record3;

// Returns multiple values in a record:
(String name, int age) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

final json = <String, dynamic>{'name': 'Dash', 'age': 10, 'color': 'blue'};
// typedefs
typedef Icon = ({String name});
typedef ButtonItem = ({String label, Icon icon, void Function()? onPressed});
final List<ButtonItem> buttons = [
  // ...
];

List<Container> widget = [
  for (var button in buttons)
    Container(
      margin: const EdgeInsets.all(4.0),
      child: OutlinedButton.icon(
        onPressed: button.onPressed,
        icon: button.icon,
        label: Text(button.label),
      ),
    ),
];

class Text {
  Text(String label);
}

class OutlinedButton {
  static icon({void Function()? onPressed, required Icon icon, required label}) {}
}

class Container {
  final EdgeInsets? margin;

  Container({this.margin, required child});
}

class EdgeInsets {
  final double all;

  const EdgeInsets.all(this.all);
}

main() {
  // Initialize it with a record expression:
  record2 = ('A string', 123);
  // Initialize it with a record expression:
  record3 = (a: 123, b: true);

  //build in getters. Records are immutable
  print(record.$1); // Prints 'first'
  print(record.a); // Prints 2
  print(record.b); // Prints true
  print(record.$2); // Prints 'last'

  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);

  print(point == color); // Prints 'true'.
  ({int x, int y, int z}) point2 = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color2 = (r: 1, g: 2, b: 3);

  print(point2 == color2); // Prints 'false'. Lint: Equals on unrelated types.

  // Destructures using a record pattern with positional fields:
  var (name, age) = userInfo(json);
  /* Equivalent to:
  var info = userInfo(json);
  var name = info.$1;
  var age  = info.$2;
  */
  print(name);
  print(age);
  print(userInfo(json));
}
