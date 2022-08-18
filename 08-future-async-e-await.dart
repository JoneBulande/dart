void main() async {
  Future<String> nameFuture = getNameById(1);

  late String name;

  // nameFuture.then((result) => name = result);
  name = await nameFuture;

  print(name);
}

// external service
Future<String> getNameById(int id) {
  // simulate request
  return Future.value('Jone');
}
