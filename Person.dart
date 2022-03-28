class Person{

  Person(String lastName, String firstName):
  assert (firstName.isNotEmpty),
  assert (lastName.isNotEmpty),
  _firstName = firstName,
  _lastName = lastName;

  String _firstName;
  String _lastName;

  String get firstName => _firstName;
  String get lastName => _lastName;
  String get fullName => '$_firstName $_lastName';

  @override
  String toString() => fullName;

}