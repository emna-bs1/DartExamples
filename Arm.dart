class Arm {

  String _name;
  int _damage;

  Arm([name = 'knife', damage = 100])
      : assert(name.isNotEmpty),
        _name = name,
        _damage = damage;

  String get name => _name;
  int get damage => _damage;

  void set name(String name) => _name = name;
  void set damage(int damage) => _damage = damage;

  Arm.basic() : this();
}
