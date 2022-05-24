import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:student_manager_state/domain/functions.dart';
import 'package:student_manager_state/domain/model.dart';

@LazySingleton(as: DbServices)
class DbImplementation implements DbServices {
  @override
  Future<List<StudentModel>> addStudent({required StudentModel model}) async {
    final student_db = await Hive.openBox<StudentModel>("student_db");
    await student_db.add(model);
    print("added");

    return student_db.values.toList();
  }

  @override
  Future<List<StudentModel>> clearAllStudentsList() async {
    final student_db = await Hive.openBox<StudentModel>("student_db");
    await student_db.clear();

    return student_db.values.toList();
  }

  @override
  Future<List<StudentModel>> removeStudent({required int index}) async {
    final student_db = await Hive.openBox<StudentModel>("student_db");
    await student_db.deleteAt(index);

    return student_db.values.toList();
  }

  @override
  Future<List<StudentModel>> loadStudents() async {
    final student_db = await Hive.openBox<StudentModel>("student_db");

    return student_db.values.toList();
  }

  @override
  Future<List<StudentModel>> editStudent(
      {required StudentModel model, required int index}) async {
    final student_db = await Hive.openBox<StudentModel>("student_db");

    student_db.putAt(index, model);

    return student_db.values.toList();
  }
}
