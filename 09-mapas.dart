void main() {
  List<String> names = ['Jone', 'Bulande'];
  // create & add
  Map<String, String> map = {'key': 'value'};
  print(map['key']);
  // add
  map.putIfAbsent('key2', () => 'value 2');
  print(map);
  // add
  map['newKey3'] = 'new Value 3';
  print(map);
  // remove
  map.remove('key2');
  print(map);
  // update
  map['key'] = '1st value updated';
  print(map);
  // update
  map.update('newKey3', (value) => 'value 3 updated');
  print(map);

  // forEach
  map.forEach((key, value) {
    print('key: $value - value: $value');
  });

  map.keys.forEach(print);
  map.values.forEach(print);
}
