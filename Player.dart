import 'Arm.dart';

abstract class Player{
  bool isAlive = true;

  int _lifePoints = 0;
  Arm _arm = Arm.basic();
  int _mana = 20;

  int get lifePoints => _lifePoints;
  Arm get arm => Arm(_arm.name, _arm.damage);
  int get mana => _mana;

  void set lifePoints(int lifePoints) => _lifePoints = lifePoints;

  void set arm(Arm arm){
    arm.name = _arm.name;
    arm.damage = _arm.damage;
  }

  void attack(Player player);
  void drinkPotion();
  void receiveDamage();
  void changeArm(Arm arm);

  @override
  //gives the object type at runtime
  String toString() => 'i\'m a $runtimeType';
}