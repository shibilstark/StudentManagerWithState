import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_manager_state/application/bloc/student_bloc.dart';
import 'package:student_manager_state/common/colors.dart';
import 'package:student_manager_state/common/styles.dart';
import 'package:student_manager_state/domain/model.dart';
import 'package:student_manager_state/presentation/inner_screen.dart/inner_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<StudentBloc>(context).add(GetAllStudents());
    });

    return Scaffold(
      floatingActionButton: BlocBuilder<StudentBloc, StudentState>(
        builder: (context, state) {
          return FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Text(
                          "Clear All Students ?",
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Cancel")),
                          TextButton(
                              onPressed: () {
                                BlocProvider.of<StudentBloc>(context)
                                    .add(ClearAllStudents());
                                Navigator.of(context).pop();
                              },
                              child: Text("Clear All"))
                        ],
                      ));
            },
            child: Icon(Icons.clear_all),
          );
        },
      ),
      body: SafeArea(
        child: BlocBuilder<StudentBloc, StudentState>(
          builder: (context, state) {
            if (state.allStudents.isNotEmpty && state.isLoading) {
              return Container(
                child: Center(child: CircularProgressIndicator()),
              );
            }
            if (state.allStudents.isEmpty) {
              return Container(
                child: Center(child: Text("No Students found")),
              );
            }

            final studentList = state.allStudents;
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return StudentTile(
                  index: index,
                  studentList: studentList,
                );
              },
              separatorBuilder: (context, index) => const Divider(
                color: veryDarkColor,
                thickness: 0.5,
              ),
              itemCount: state.allStudents.length,
            );
          },
        ),
      ),
    );
  }
}

class StudentTile extends StatelessWidget {
  final index;
  final List<StudentModel> studentList;
  const StudentTile({Key? key, required this.studentList, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final student = studentList[index];
    return BlocBuilder<StudentBloc, StudentState>(
      builder: (context, state) {
        return ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => InnerScreen(
                      index: index,
                    )));
          },
          title: Text(
            student.name,
            style: studentNameStyle,
          ),
          subtitle: Text(student.age),
          leading: CircleAvatar(
            backgroundColor: mediumColor,
            backgroundImage: FileImage(File(student.studentImage)),
          ),
          trailing: IconButton(
              onPressed: () {
                BlocProvider.of<StudentBloc>(context)
                    .add(RemoveStudent(index: index));
              },
              icon: const Icon(
                Icons.delete,
                color: mediumColor,
              )),
        );
      },
    );
  }
}
