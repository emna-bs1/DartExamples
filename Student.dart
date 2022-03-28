import 'levelsEnum.dart';
import 'Person.dart';

class Student extends Person {
  int _id;
  final levels = <Level>[];
  int get id => _id;

  //this is no longer used because it refers to a property within an object
  // since first name and last name are the Person's class properties
  // we access them directly
  @override
  String get fullName => '$lastName, $firstName';

  Student(String lastName, String firstName, int id)
      : assert(id >= 0),
        _id = id,
        super(lastName, firstName);


  @override
  String toString() {
    StringBuffer levelsString = StringBuffer();
    levels.forEach((element) => levelsString.write(element));
    return super.toString() + '\nid: $id\nlevels: ' + levelsString.toString();
  }
}
