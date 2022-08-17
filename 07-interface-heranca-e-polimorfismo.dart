void main() {
  // print(Man.talk());

  Kid kid = Kid();
  print(kid.talk());

  Payment payment = payWithMpesa();
  payment.pay();
  payment = payWithPayPal();
  payment.pay();
}

abstract class Person {
  bool single = true;
}

class Man implements Person {
  // abstração "prop - obrigatória"
  bool single = true;
}

class Women implements Person {
  // abstração "prop - obrigatória"
  bool single = false;
}

class Parent {
  String talk() {
    return 'Hello...';
  }
}

// Herança
class Kid extends Parent {}

abstract class Payment {
  void pay();
}

class payWithMpesa implements Payment {
  void pay() {
    print('Pay with M-Pesa');
  }
}

class payWithPayPal implements Payment {
  void pay() {
    print('Pay with Paypal');
  }
}
