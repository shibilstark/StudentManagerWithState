import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:student_manager_state/domain/functions.dart';
import 'package:student_manager_state/domain/model.dart';

part 'student_event.dart';
part 'student_state.dart';
part 'student_bloc.freezed.dart';

@injectable
class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final DbServices dbServices;

  StudentBloc(this.dbServices) : super(StudentState.initial()) {
    try {
      on<GetAllStudents>((event, emit) async {
        final student_db = await Hive.openBox<StudentModel>("student_db");
        emit(StudentState(
          allStudents: [],
          isLoading: true,
        ));

        final List<StudentModel> allStudentsList =
            await dbServices.loadStudents();

        // allStudentsList.clear();
        // allStudentsList.addAll(student_db.values);

        emit(StudentState(allStudents: allStudentsList, isLoading: false));
      });
    } catch (e) {
      log(e.toString());
    }

    try {
      on<AddStudent>((event, emit) async {
        final student_db = await Hive.openBox<StudentModel>("student_db");
        emit(StudentState(
          allStudents: [],
          isLoading: true,
        ));

        final List<StudentModel> allStudentsList =
            await dbServices.addStudent(model: event.model);

        // allStudentsList.clear();
        // allStudentsList.addAll(student_db.values);

        emit(StudentState(allStudents: allStudentsList, isLoading: false));
      });
    } catch (e) {
      log(e.toString());
    }

    try {
      on<RemoveStudent>((event, emit) async {
        final student_db = await Hive.openBox<StudentModel>("student_db");
        // emit(const StudentState(
        //   allStudents: [],
        //   isLoading: true,
        // ));

        final List<StudentModel> allStudentsList =
            await dbServices.removeStudent(index: event.index);

        log("${student_db.values.length}");

        // allStudentsList.clear();
        // allStudentsList.addAll(student_db.values);

        emit(StudentState(allStudents: allStudentsList, isLoading: false));
      });
    } catch (e) {
      log(e.toString());
    }

    try {
      on<ClearAllStudents>((event, emit) async {
        final student_db = await Hive.openBox<StudentModel>("student_db");

        final List<StudentModel> allStudentsList =
            await dbServices.clearAllStudentsList();

        log("${student_db.values.length}");

        // allStudentsList.clear();
        // allStudentsList.addAll(student_db.values);

        emit(StudentState(
            allStudents: student_db.values.toList(), isLoading: false));
      });
    } catch (e) {
      log(e.toString());
    }

    try {
      on<EditStudent>((event, emit) async {
        final student_db = await Hive.openBox<StudentModel>("student_db");

        final List<StudentModel> allStudentsList = await dbServices.editStudent(
            index: event.index, model: event.modle);

        log("${student_db.values.length}");

        // allStudentsList.clear();
        // allStudentsList.addAll(student_db.values);

        emit(StudentState(
            allStudents: student_db.values.toList(), isLoading: false));
      });
    } catch (e) {
      log(e.toString());
    }
  }
}
