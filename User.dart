class User {
  int _id;
  String _name;

  //getters
  int get id => _id;
  String get name => _name;

    //calculated property
  bool get isBigId => _id > 50;


  //setters
  set name(String name) => _name = name;
  set id(int id) => _id = id >= 0 ? id : this._id;


  // the value of a property is only assigned at runtime, hence
  //we use the keyword final for the declaration of a constant property
  int age; //immutable, hence private accessor is no more necessary (for modification purposes)

  /*
  long-form constructor
  User([int? id, String? name]){
    //shadowing
    this.id = id;
    this.name = name;
 }
   */

  //unnamed constructor
  //short-form constructor with optional named parameters
  // ancient version (public properties) : User({this.id = 0, this.name = 'unknown'});
  //_id and _name are initialized before the constructor is called

  /**
  using an underscore before a variable or method name makes it
   library private and not class private!!
   */


  User({int id = 0, String name = 'anonymous', int age = 0}) :
      //the initializer list
        assert(id >= 0),
        assert(name.isNotEmpty),
        this.age = age,
        _id = id,
        _name = name {
    print('id is $id and name is $name');
  }


  //named constructor

  /*
  User.anonymous(){
    id = 0;
    name = 'anonymous';
  }
   */

  //calling the above created constructor
  //User.anonymous() : this(id: 0, name: 'anonymous');
  User.anonymous() : this();


  String toJson() {
    return '{"id":$_id,"name":$_name}';
  }

  // telling the compiler the we want to override the toString method
  @override
  String toString(){
    return 'User(id: $_id, name: $_name, age: $age)';
  }
}


void main(){
  final User simon = User();
  simon._id = 78;
  print(simon.toJson());
  simon._name = 'simon';

  final User jack = User()
  .._name = 'Jack'
  .._id = 15;

  final User peter = User(id : 44, name : 'peter');
  print(simon);
  print(simon.toJson());

  //named constructor testing
  final anonymousUser = User.anonymous();
  print(anonymousUser);
}