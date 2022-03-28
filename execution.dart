import 'Calculator.dart';
import 'ImplementVsExtend.dart';
import 'LanguagesClub.dart';
import 'PlayerRepository.dart';
import 'levelsEnum.dart';
import 'Singleton.dart';
import 'Student.dart';
import 'User.dart' as v1;
import 'UserV2.dart' as v2;
import 'clubMember.dart';

void main(){
  v1.User u1 = v1.User();
  final jacob = v1.User(id: 4, name: 'Jacob');

  // u1._name = 'another'; not allowed
  // jacob = User(id: -4, name: 'Jacob');

  /**
    const : canonical instances: a long as the properties used to create
    instances of the class are the same, dart will only consider them as
    a single instance
   */

  const another = v2.User(id: 7, name: 'another');
  print(another);

  //named constructor
  var anonymous = v2.User.anonymous();
  //constant constructors
  const anonymous1 = const v2.User.anonymous();
  const anonymous2 = const v2.User.anonymous();
  final anonymous3 = v2.User.anonymous();

  print(anonymous == anonymous1);
  print(anonymous1 == anonymous2);
  print(anonymous3 == anonymous1);

  print(anonymous);

  final map = {'id' : 10, 'name' : 'someone'};
  final someone = v2.User.fromJson(map);
  print(someone);

  //copying a reference
  u1 = jacob;
  print(u1);
  jacob.age = 43;
  print(u1);

  //getters
  print(someone.id);

  //singleton classes
  // before adding the factory constructor, an instantiation would look like :
  //Singleton singleton = Singleton.instance;
  //same values shared among all the class instances
  Singleton session1 = Singleton();
  Singleton session2 = Singleton();
  session1.username = 'peter';
  session2.password = '*******';
  print(session1);
  print(session2);
  print(session1 == session2);

  // inheritance
  final patricia = Student('patricia', 'simon', 0);
  final patrick = Student('patrick', 'samuel', 1);
  final englishLevel = Level.ELEMENTARY;
  patricia.levels.add(englishLevel);
  print(patricia);
  print(patrick);

  //polymorphism : object that is able to take multiple forms
  final jessica = LanguagesClub('jessica', 'jay', 87);
  final frenchLevel = Level.BEGINNER;
  jessica.levels.add(frenchLevel);
  print(jessica.fullName);
  print(jessica.isEligible ? 'eligible' : 'not eligible');

  print(jessica is Student);
  print(jessica is! LanguagesClub);

  //interfaces
  //the unnamed factory constructor is called
  final PlayerRepository playerRepo = PlayerRepository();
  print(playerRepo.fetchLifePoints(10));


  //implement vs extend
  final anotherClass = AnotherClass();
  final someOtherClass = SomeOtherClass();
  print(anotherClass);
  print(someOtherClass);

  //mixins
  final calculator = Calculator();
  print(calculator.add(45, 10.2));

}