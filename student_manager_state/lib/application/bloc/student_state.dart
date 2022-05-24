part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState({
    required List<StudentModel> allStudents,
    required bool isLoading,
  }) = _StudentState;

  factory StudentState.initial() =>
      const StudentState(allStudents: [], isLoading: false);
}
