import 'package:student_manager_state/domain/model.dart';

abstract class DbServices {
  Future<List<StudentModel>> addStudent({required StudentModel model});
  Future<List<StudentModel>> clearAllStudentsList();
  Future<List<StudentModel>> removeStudent({required int index});
  Future<List<StudentModel>> loadStudents();
  Future<List<StudentModel>> editStudent(
      {required StudentModel model, required int index});
}
