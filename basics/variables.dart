
late String description;
const abar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * abar;
var foo = [10, 11];
var bar = const [20, 21];
const baz = [30, 31];
const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: 'int'}; // Use is and collection if.
// ignore: unnecessary_type_check
const set = {if (list is List<int>) ...list}; // ...and a spread.

void main() {
  //wildcard
  int _ = 1;
  foo.add(12);
  //bar.add(22);//Unsupported operation: Cannot add to an unmodifiable list
  bar = [19, 21]; //new value, modifiable
  description = 'Feijoada!';
  print(bar);
}
