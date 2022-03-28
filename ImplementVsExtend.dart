class AnyClass{
  int anyField = 12;
  void anyMethod() => print('hello from the other side');

  @override
  String toString() => '$anyField';
}

class AnotherClass implements AnyClass{
  @override
  int anyField = 78;

  @override
  void anyMethod() => print("reimplemented successfully!");
}

class SomeOtherClass extends AnyClass{
}
