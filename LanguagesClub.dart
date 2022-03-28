import 'levelsEnum.dart';
import 'clubMember.dart';

class LanguagesClub extends ClubMember{
  LanguagesClub(String lastName, String firstName, int id) : super(lastName, firstName, id);
  bool get isEligible => levels.every((level) => level != Level.BEGINNER );
}