import 'dart:convert';

void main() {
  String json = '''
    {
      "user": "Jone",
      "email": "JoneBulande@mail.com",
      "permissions": [
        "admin", "admin"
      ]
    }
  ''';
  // print(json);

  Map resultJson = jsonDecode(json);
  print(resultJson.runtimeType);

  print(resultJson["user"]);
  print(resultJson["email"]);
  print(resultJson["permissions"][0]);
  resultJson.forEach((key, value) {
    print('$key: $value');
  });

  var convertToJson = jsonEncode(resultJson);
  print(convertToJson.runtimeType);
  print(convertToJson);
}
