
class Candidate {
  late String name;
  late int yearsExperience;
  Candidate (this.name, this.yearsExperience);
}

var candidates = [
  Candidate('Fulano', 5),
  Candidate('Beltrano', 2),
  Candidate('Cicrano', 7),
];

void main() {
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  for (final Candidate(:name, :yearsExperience) in candidates) {
    print('$name has $yearsExperience of experience.');
  }
}
