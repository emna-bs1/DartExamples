import 'Student.dart';

class ClubMember extends Student{
  ClubMember(String lastName, String firstName, int id) : super(lastName, firstName, id);
  static const minParticipation = 3;

}