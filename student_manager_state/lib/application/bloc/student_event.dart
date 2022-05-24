part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  const factory StudentEvent.initialize() = Initialize;
  const factory StudentEvent.addStudent({required StudentModel model}) =
      AddStudent;

  const factory StudentEvent.clearAllStudents() = ClearAllStudents;

  const factory StudentEvent.removeStudent({required int index}) =
      RemoveStudent;
  const factory StudentEvent.getAllStudents() = GetAllStudents;

  const factory StudentEvent.editStudent(
      {required StudentModel modle, required int index}) = EditStudent;
}
