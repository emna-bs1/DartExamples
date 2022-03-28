class Singleton{

  //private named constructor
  //session storage for example
  Singleton._();

  String _username = '';
  String _password = '';

  String get username => _username;
  String get password => _password;

  void set username(String username) => _username = username;
  void set password(String password) => _password = password;

  static final Singleton _instance = Singleton._();

  //to hide the fact that the class is a singleton
  // a factory constructor is used instead of a named one because
  // the latter has to return a new instance
  //an unnamed factory constructor
  factory Singleton() => _instance;

  @override
  String toString(){
    return 'username: $username, password: $password';
  }

}
