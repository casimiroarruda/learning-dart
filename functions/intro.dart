Map<int, String> _nobleGases = {
  2: 'He',
  10: 'Ne',
  18: 'Ar',
  36: 'Kr',
  54: 'Xe',
  86: 'Rn',
};

bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

//or
bool oneLineIsNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

//named parameters
void enableFlags({bool bold = false, required bool? hidden}) {
  //
}
//optional positional parameters
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// function into variable
var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';

//anonymous
const list = ['apples', 'bananas', 'oranges'];

var uppercaseList =
    list.map((item) {
      return item.toUpperCase();
    }).toList();

//Lexical closures
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  assert(loudify('hello') == '!!! HELLO !!!');
  // Convert to list after mapping
  for (var item in uppercaseList) {
    print('$item: ${item.length}');
  }
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}
