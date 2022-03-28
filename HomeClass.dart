import 'dart:math';

class Person {
  static int creation = 0;

  //runtime constants
  //final keyword
  final hoursSinceMidnight = DateTime
      .now()
      .hour;
  final id = creation++;

  //compile time constans
  //const keyword

  //const idNb = 0; it makes no sense to declare a const in a class :
  // the const var will be shared among all the instances of the class

  //everything is an object in dart, even the assigned values are.
  // dart is a type safe language; once the variable's type is set, it can never be changed
  // type safety => compiling errors
  // num accountNb; num allows assigning int and double values to
  //throw caution to the winds : using the dynamic type which allow to assign all types to the corresponding variable

  String lastName = '';
  String firstName = '';
  int age = 0;

  //type inference
  //var : telling dart to use whatever type is appropriate
  var hello = 'hello jello';

  // hello = 87; is not allowed in this case

  void changeAge() {
    age = 78;
  }
}

void main() {
  print(addNumbers(1, 5));
  //integer division
  print(3 ~/ 5);
  print(28 % 10);
  print(28 ~/ 10);
  print(28 / 10);
  print(sin(45 * pi / 180));
  print(1 / sqrt(2));
  print(10.isEven);
  print(5.36.round());

  num anyNumber;
  anyNumber = 45;
  print(anyNumber.runtimeType);
  anyNumber = 78.36;
  print(anyNumber.runtimeType);

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  const totalCost = (hourlyRate * hoursWorked);

  //to int() is a runtime method
  //const is not hence allowed
  final total = (hourlyRate * hoursWorked).toInt();

  num someNumber = 2;
  //print(someNumber.isEven); :  isn't allowed since isEven is a property of the int type
  final someInt = someNumber as int;
  print(someInt.isEven);
  // final someDouble = someNumber as double: the as keyword only allows casts to subtypes.
  final someDouble = someNumber.toDouble();

  // strings are immutable in dart
  var greeting = 'hello dart!';
  //dart uses utf-16 code units.
  greeting = 'hello flutter';
  const dart = '🎯';
  print(dart.codeUnits);
  print(dart.runes);

  var message = 'hello' + ' my name is';
  const name = ' emna';
  final welcomePhrase = message + name;
  print(welcomePhrase);

  //unlike string, string buffer is a mutable type
  final statement = StringBuffer();
  statement.write('hello dear');
  statement.write(' i am your friend');
  print(statement.toString());

  const oneThird = 1 / 3;
  // oneThirdEquals cannot be of type const because toStringAsFixed is a runtime method
  final oneThirdEquals = 'one third equals ${oneThird.toStringAsFixed(3)}';
  print(oneThirdEquals);

  final bigString = '''
  hello
  here i am again
  i can't wait to watch the new movie!
  ''';

  const oneLine = 'This is only '
      'a single '
      'line '
      'at runtime.';

  const rawString = r'My name \n is $emna';
  print(rawString);
  print(bigString);

  print('I \u2764 Dart\u0021');
  print('I love \u{1F3AF}');

  // the variable is generalized on purpose; dynamic and object? behave nearly the same
  Object? myVariable = 78;
  myVariable = 'hello';
  print(myVariable);

  const willTravel = false;
  print(willTravel);

  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
  //either cloudy or rainy
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }

  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen.');
      break;
    case Weather.snowy:
      print('Get your skis.');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella.');
      break;
  }

  print(weatherToday);
  print(weatherToday.index);


  final random = Random();

  // next int generates an integer between 0 and one less than the maximum
  while (random.nextInt(6) + 1 != 6) {
    print('not a six!');
  }
  print('finally, you\'re a six');

  const myString = 'I ❤ Dart';

  for (var codePoint in myString.runes) {
    print(codePoint);
    print(String.fromCharCode(codePoint));
  }

  const myNumbers = [1, 3, 3, 5];
  myNumbers.forEach((number) => print(number));

//calling a function with named parameters
  // the parameter's name is given because its wrapped between {}
  print(fullName('emna', 'boussoffara', title: 'Ms'));

// anonymous function
  Function multiply = (int a, int b) => a * b;
  print(multiply(78, 10));


  final triple = applyMultiplayer(3);
  print(triple(6));
  print(triple(14.0));





  // here ends the main
  }

Function applyMultiplayer(num multiplayer){
  return (num value){
    print(value);
    return value * multiplayer;
  };
}

Function namedFunction(Function whatever) {
  return whatever;
}

addNumbers(int num1, int num2) {
  return num1 + num2;
}

//used if we want fullName to be both a named and a required parameter
upgradedVersion({required String fullName, String? lastName, String? title}) {

}


// optional parameters
//String? is a type called the nullable string type
String fullName(String firstName, String lastName,
    {String? title, int min = 0}) {
  String fullName = firstName + ' ' + lastName;
  return title == null ? fullName : title + ' ' + fullName;
}


// declaration of enum
enum Weather {
  sunny,
  cloudy,
  rainy,
  snowy,
}