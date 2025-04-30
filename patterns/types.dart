enum Color {
  red(rgb: '#900'),
  yellow(rgb: '#BB0'),
  blue(rgb: '#460'),
  green(rgb: '#090'),
  orange(rgb: '#E40');

  const Color({required this.rgb});
  final String rgb;
}

var color = Color.red;

var isPrimary = switch (color) {
  Color.red || Color.yellow || Color.blue => true,
  _ => false,
};
main() {
  print(isPrimary);
}
