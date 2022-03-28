//interface : protocol or description of how communication will be managed
//between two parties
//can be used to interfere between business logic and database
//usually called repository
import 'FakeWebServer.dart';

abstract class PlayerRepository{

  //used to segregate the business logic from the implementation details
  factory PlayerRepository() => FakeWebServer();
  int? fetchLifePoints(int playerId);

}