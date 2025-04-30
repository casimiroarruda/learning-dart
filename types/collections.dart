List<int> list = [1, 2, 3]; //simple array
List<int> list2 = [0, ...?list];//expanding "list", allowing null
List<String> nav = ['Home', 'Furniture', 'Plants', if(list.length == 3) 'Outlet']; //if assignment
List<String> listOfStrings = ['#0', for (int i in list2) '#$i'];

Set<String> halogens = {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
}; //unique items

Map<String, String> gifts = {
  'fisrt': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings',
};//associative array

Map<int, String> nobleGases = {2: 'helium', 10: 'neon', 18: 'argon'};

main() {
  assert(list.length == 3);
  assert(list[1] == 2);
  list[1] = 1;
  assert(list[1] == 1);

  halogens.add('astatine');
  print(halogens.length);

  gifts['forth'] = 'calling birds';
  assert(gifts.length == 4);
  print(list2);
  print(listOfStrings);
}
