import 'package:hive_flutter/adapters.dart';
part 'model.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String age;
  @HiveField(2)
  final String college;
  @HiveField(3)
  final String phone;

  @HiveField(4)
  final String studentImage;

  StudentModel(
      {required this.name,
      required this.age,
      required this.college,
      required this.phone,
      required this.studentImage});
}
