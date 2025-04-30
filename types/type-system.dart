void printInts(List<int> a) => print(a);

class Animal {
  void chase(Animal a) {}
  Animal get parent => throw UnimplementedError();
}

class HoneyBadger extends Animal {
  @override
  void chase(Animal a) {}

  @override
  HoneyBadger get parent => parent;
  //Root get parent => parent;
}


class Mouse extends Animal {
  //  ...
}

class Cat extends Animal {
  @override
  void chase(covariant Mouse x) {
    //  ...
  }
}

List<int> listOfInt = [];

// Inferred as if you wrote <double>[3.0].
var listOfDouble = [3.0];

// Inferred as Iterable<int>.
var ints = listOfDouble.map((x) => x.toInt());

class A<X extends A<X>> {}

class B extends A<B> {}

class C extends B {}

void f<X extends A<X>>(X x) {}

X max<X extends Comparable<X>>(X x1, X x2) => x1.compareTo(x2) > 0 ? x1 : x2;

(X, Y) fg<X extends Iterable<Y>, Y>(X x) => (x, x.first);



void main() {
  final list = <int>[];
  list.add(1);
  /*list.add('2');//error */
  list.add(2);
  printInts(list);


  f(B()); // OK.

  // OK. Without using bounds, inference relying on best-effort approximations
  // would fail after detecting that `C` is not a subtype of `A<C>`.
  f(C());

  f<B>(C()); // OK.

  print(max(3, 7));

  /*var (myList, myInt) = fg([1]);*/
  /*myInt.whatever; // Compile-time error, `myInt` has type `int`.*/

  var (mySet, myString) = fg({'Hello!'});
  mySet.union({}); // Works, `mySet` has type `Set<String>`.
}
