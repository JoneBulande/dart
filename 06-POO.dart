void main() {
  Car ford = Car('Mustang');
  print(ford.carPrice);
}

class Car {
  final String model;
  String _motor = 'car motor';
  String _price = '100k';

  String get carPrice => _price;

  void setValue(String price) => _price = price;

  Car(this.model);
}
