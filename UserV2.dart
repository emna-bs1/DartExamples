class User {

  //constant class properties
  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  final int id;
  final String name;



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
   * using an underscore before a variable or method name makes it
   * library private and not class private!!
   */

  /**
  since all the field of the class are final we can add the const
   keyword before the constructor to ensure that all instances
   of the class are will constant at compile time

      //before the removal of underscores
  const User({int id = 0, String name = 'anonymous'}) :
  //the initializer list
        assert(id >= 0),
        // assert(name.isNotEmpty), ot viable any more because isNotEmpty requires a runtime check
        _id = id,
        _name = name;
   */

  const User({this.id = _anonymousId, this.name = _anonymousName}) : assert (id >= 0);


  //named constructor

  /*
  User.anonymous(){
    id = 0;
    name = 'anonymous';
  }
   */

  //calling the above created constructor
  //User.anonymous() : this(id: 0, name: 'anonymous');
  const User.anonymous() : this();


  //factory constructors
  /**
   * factory constructors return objects of the class type
   */
  factory User.jacob(){
    return User(id: 10, name: 'Jacob');
  }

  factory User.fromJson(Map<String, Object> json){
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    /**
     * a lot of validation can go on before actually creating the constructor,
     * in contrary to the named constructor which only allows assertion
     * at most
       */
    return User(name: userName, id: userId);
  }

  String toJson() {
    return '{"id":$id,"name":$name}';
  }

  // telling the compiler the we want to override the toString method
  @override
  String toString(){
    return 'User(id: $id, name: $name)';
  }
}


void main(){

}