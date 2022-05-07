import 'package:hive/hive.dart';

part 'citizen_info.g.dart';

@HiveType(typeId: 0)
class CitizenInfo extends HiveObject {
  CitizenInfo(this.firstName, this.lastName, this.nss, this.isVoted);
  @HiveField(0)
  String firstName;

  @HiveField(1)
  String lastName;

  @HiveField(2)
  String nss;

  @HiveField(3)
  bool isVoted;
}
