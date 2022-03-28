import 'Arm.dart';
import 'Player.dart';

class SuperHero extends Player{
  @override
  void attack(Player player) {
    int points = player.lifePoints - mana;
    player.lifePoints = points > 0 ? points : 0;
  }

  @override
  void drinkPotion() {
    // TODO: implement drinkPotion
  }

  @override
  void receiveDamage() {
    // TODO: implement receiveDamage
  }

  @override
  void changeArm(Arm arm) {
    // TODO: implement changeArm
  }

}