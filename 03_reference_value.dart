String capitalize(String text) {
  text = text.toUpperCase();
  return text;
}

Map<String, String> capitalizeMap(Map<String, String> map) {
  // Break reference
  map = {...map};

  map['name'] = map['name']?.toUpperCase() ?? 'No name';
  return map;
}

main() {
  String name = 'brayan';
  String name2 = capitalize(name);

  // print(name);
  // print(name2);

  Map<String, String> person = {
    'name': 'Tony Stark',
  };

  Map<String, String> person2 = capitalizeMap(person);

  // Maps, Arrays, Lists, Objects and class instances are sent by reference
  print(person);
  print(person2);
}
