void main() {
  ShowStudents showStudents = ShowStudents();
  showStudents(); // callable interfaces
}

class ShowStudents {
  void call() => print('Jone, Luis, Sara'); // callable interfaces
}
