void main() {
  // Eg 1
  // try {
  //   print((2 / 0).toInt());
  // } catch (err, stackStrace) {
  //   print('showing error: $err');
  //   // rethrow;
  //   throw customError('Custom Error class');
  // }

  // Eg2
  // String user = 'admin';
  // String pass = '***';
  // if (pass.length <= 6) throw PasswordLengthError();

  // Eg3
  Login login = Login();
  try {
    login.singIn();
  } on PasswordLengthError catch (e) {
    print('Login Error');
  } catch (e) {
    print('other Error');
  } finally {
    print('Done');
  }
}

// Eg1
// class customError implements Exception {
//   final String error;
//   customError(this.error);
// }

class Login {
  void singIn() {
    String user = 'admin';
    String pass = '***';
    if (pass.length <= 6) throw PasswordLengthError();
  }
}

class PasswordLengthError implements Exception {
  PasswordLengthError();
}
