import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_manager_state/application/bloc/student_bloc.dart';
import 'package:student_manager_state/common/colors.dart';
import 'package:student_manager_state/common/functions.dart';
import 'package:student_manager_state/common/styles.dart';

import 'package:student_manager_state/presentation/main/main_screen.dart';
import 'package:student_manager_state/presentation/update_screen/update_screen.dart';

final studentInnerStyle = TextStyle(
  color: veryDarkColor,
  fontSize: 18,
  fontWeight: FontWeight.w500,
);

class InnerScreen extends StatelessWidget {
  final int index;
  const InnerScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppBar(title: ""),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: BlocBuilder<StudentBloc, StudentState>(
            builder: (context, state) {
              final currentStudent = state.allStudents[index];
              return Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About",
                        style: titleStyle.copyWith(color: veryDarkColor),
                      ),
                      CircleAvatar(
                        radius: 100,
                        backgroundColor: mediumColor,
                        backgroundImage:
                            FileImage(File(currentStudent.studentImage)),
                      ),
                    ],
                  ),
                  Gap(
                    H: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: vlcOpacitic,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Column(
                        children: [
                          InnerTile(
                              title: "Student Name",
                              value: currentStudent.name),
                          Gap(
                            H: 25,
                          ),
                          InnerTile(title: "Age", value: currentStudent.age),
                          Gap(
                            H: 25,
                          ),
                          InnerTile(
                              title: "College", value: currentStudent.college),
                          Gap(
                            H: 25,
                          ),
                          InnerTile(
                              title: "Phone No", value: currentStudent.phone),
                        ],
                      ),
                    ),
                  ),
                  Gap(
                    H: 30,
                  ),
                  Center(
                    child: FloatingActionButton(
                      backgroundColor: veryDarkColor,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => UpdateScreen(
                                  editIndex: index,
                                )));
                      },
                      child: Icon(Icons.edit),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class InnerTile extends StatelessWidget {
  final title;
  final value;
  const InnerTile({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$title   :  ",
          style: studentInnerStyle,
        ),
        Text(
          value,
          style: studentInnerStyle.copyWith(color: mediumColor, fontSize: 17),
        )
      ],
    );
  }
}
