void main() {
  SmartPhone jonesPhone = SmartPhone('black', 15000, 15.3);
  SmartPhone sarasPhone = SmartPhone('white', 12000, 12.4);

  print(jonesPhone.price);
  print(sarasPhone.toString());
  print(jonesPhone.toString());
  print(jonesPhone.totalPrice(20.4));
}

class SmartPhone {
  final String color;
  final int price;
  final double deviceWidth;

  SmartPhone(this.color, this.price, this.deviceWidth);

  String toString() {
    return "Device specifications: color: $color, price: $price mzn, width: $deviceWidth";
  }

  double totalPrice(double discount) {
    return price - discount;
  }
}
