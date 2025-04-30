var names = <String>[];

abstract class Cache<T>{
  T getByKey(String key);
  void setByKey(String key, T value);
}

abstract class SomeBaseClass{}

class Foo<T extends SomeBaseClass> {
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {}
var someBaseClassFoo = Foo<SomeBaseClass>();
var extenderFoo = Foo<Extender>();

// F-Bound
abstract interface class Comparable<T> {
  int compareTo(T o);
}

int compareAndOffset<T extends Comparable<T>>(T t1, T t2) =>
    t1.compareTo(t2) + 1;

class A implements Comparable<A> {
  @override
  int compareTo(A other) => /*...implementation...*/ 0;
}

var useIt = compareAndOffset(A(), A());

//Generic method
T first<T>(List<T> ts) {
  T tmp = ts[0];
  return tmp;
}
main() {
  names.addAll(['Seth', 'Kathy', 'Lars']);
  /* names.add(42); // Erro */
  assert(names is List<String>); // true

  var foo = Foo();
  print(foo); // Instance of 'Foo<SomeBaseClass>'
  /* var foo = Foo<Object>();//static analysis: failure */
  print(first<String>(names));
}
