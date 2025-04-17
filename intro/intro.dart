import 'planet.enum.dart';
import 'Spacecraft.class.dart';
import 'lib.dart';

void main() {
  var name = 'Voyager 1';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['Saturn'],
    'url': '//path/to/saturn.jpg',
  };

  var to_print = '20th century';
  if (year >= 2001) {
    to_print = '21st century';
  }
  print(to_print);

  for (final object in flybyObjects) {
    print('Flyby object: $object');
  }
  // arrow function
  flybyObjects.where((name) => name.contains('turn')).forEach(print);

  //calling function
  print(fibonacci(20));

  //class usage
  var voyager = Spacecraft(name, DateTime(year, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  //enum usage
  final yourPlanet = Planet.earth;
  if (!yourPlanet.isGiant) {
    print('Your planet is not a "giant planet".');
  }

  print('Hello, Dart!');
}
