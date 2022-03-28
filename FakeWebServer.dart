import 'PlayerRepository.dart';

class FakeWebServer implements PlayerRepository{
  @override
  int? fetchLifePoints(int playerId) {
    return 70;
  }

}