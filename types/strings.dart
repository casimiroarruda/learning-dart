// import 'package:characters/characters.dart';
void main(List<String> args) {
  
  // strings
  var s = 'string interpolation';

  assert(
    'Dart has $s, which is very handy.' ==
        'Dart has string interpolation, '
            'which is very handy.',
  );
  assert(
    'That deserves all caps. '
            '${s.toUpperCase()} is very handy!' ==
        'That deserves all caps. '
            'STRING INTERPOLATION is very handy!',
  );
  //concatenation
  var s1 =
      'String '
      'concatenation'
      " works even over line breaks.";
  assert(
    s1 ==
        'String concatenation works even over '
            'line breaks.',
  );

  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');

  //rune
  print('\u2665');
  print('\u{1f606}');

  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
  // print('The last character: ${hi.characters.last}');
  print(#radix);
}