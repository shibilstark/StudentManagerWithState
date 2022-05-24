import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_manager_state/application/bloc/student_bloc.dart';
import 'package:student_manager_state/common/colors.dart';
import 'package:student_manager_state/common/functions.dart';
import 'package:student_manager_state/domain/model.dart';
import 'package:student_manager_state/presentation/add_screen/add_screen.dart';

enum Type {
  add,
  update,
}

Future<String> pickImage() async {
  final _image = await ImagePicker().pickImage(source: ImageSource.camera);
  if (_image?.path == null) return "";

  return _image!.path;
}

ValueNotifier<bool> _empty = ValueNotifier(false);
ValueNotifier<String> _img = ValueNotifier("");

TextEditingController _NameAddController = TextEditingController();
TextEditingController _AgeAddController = TextEditingController();
TextEditingController _CollegeAddController = TextEditingController();
TextEditingController _PhoneAddController = TextEditingController();

class UpdateScreen extends StatelessWidget {
  final int editIndex;
  const UpdateScreen({Key? key, required this.editIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Form(
              child: BlocBuilder<StudentBloc, StudentState>(
                builder: (context, state) {
                  final currentStudent = state.allStudents[editIndex];
                  // WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
                  //   if (_NameAddController.value.text.isEmpty) {
                  //     _NameAddController.value.text ==
                  //         state.allStudents[editIndex].name;
                  //   }
                  //   if (_AgeAddController.value.text.isEmpty) {
                  //     _AgeAddController.value.text ==
                  //         state.allStudents[editIndex].age;
                  //   }

                  //   _CollegeAddController.value.text ==
                  //       state.allStudents[editIndex].college;
                  //   _PhoneAddController.value.text ==
                  //       state.allStudents[editIndex].phone;
                  // });

                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(mediumColor),
                            ),
                            onPressed: () async {
                              _img.value = await pickImage();
                              _img.notifyListeners();
                            },
                            child: Text("Update Image"),
                          ),
                          ValueListenableBuilder(
                              valueListenable: _img,
                              builder: (BuildContext context, dynamic img,
                                  Widget? child) {
                                return img == ""
                                    ? CircleAvatar(
                                        backgroundImage: FileImage(File(state
                                            .allStudents[editIndex]
                                            .studentImage)),
                                        radius: 80,
                                      )
                                    : CircleAvatar(
                                        backgroundImage: FileImage(File(img)),
                                        radius: 80,
                                      );
                              })
                        ],
                      ),
                      Gap(
                        H: 30,
                      ),
                      TextFormField(
                        controller: _NameAddController,
                        decoration: InputDecoration(
                          hintText: currentStudent.name,
                          filled: true,
                          fillColor: veryLightColor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      Gap(
                        H: 15,
                      ),
                      TextFormField(
                        validator: ((value) {}),
                        controller: _AgeAddController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: currentStudent.age,
                          filled: true,
                          fillColor: veryLightColor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      Gap(
                        H: 15,
                      ),
                      TextFormField(
                        controller: _CollegeAddController,
                        decoration: InputDecoration(
                          hintText: currentStudent.college,
                          filled: true,
                          fillColor: veryLightColor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      Gap(
                        H: 15,
                      ),
                      TextFormField(
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: _PhoneAddController,
                        decoration: InputDecoration(
                          hintText: currentStudent.phone,
                          filled: true,
                          fillColor: veryLightColor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      Gap(
                        H: 20,
                      ),
                      ValueListenableBuilder(
                        valueListenable: _empty,
                        builder: (BuildContext context, bool isEmpty,
                            Widget? child) {
                          return Visibility(
                              visible: isEmpty,
                              child: Text(
                                "Fields can't be empty",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 13),
                              ));
                        },
                      ),
                      Gap(
                        H: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              _NameAddController.clear();
                              _AgeAddController.clear();
                              _CollegeAddController.clear();
                              _PhoneAddController.clear();
                              _img.value = "";
                              Navigator.of(context).pop();
                            },
                            child: Text("Cancel"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(veryDarkColor),
                              foregroundColor:
                                  MaterialStateProperty.all(veryLightColor),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              // if (_NameAddController.value.text
                              //         .trim()
                              //         .isEmpty ||
                              //     _AgeAddController.value.text.trim().isEmpty ||
                              //     _CollegeAddController.value.text
                              //         .trim()
                              //         .isEmpty ||
                              //     _PhoneAddController.value.text
                              //         .trim()
                              //         .isEmpty ||
                              //     _img.value.isEmpty) {
                              //   _empty.value = true;
                              //   _empty.notifyListeners();
                              // } else {
                              _empty.value = false;
                              _empty.notifyListeners();

                              final model = StudentModel(
                                name: _NameAddController.value.text.isEmpty
                                    ? currentStudent.name
                                    : _NameAddController.value.text.trim(),
                                age: _AgeAddController.value.text.isEmpty
                                    ? currentStudent.age
                                    : _AgeAddController.value.text.trim(),
                                college: _CollegeAddController
                                        .value.text.isEmpty
                                    ? currentStudent.college
                                    : _CollegeAddController.value.text.trim(),
                                phone: _PhoneAddController.value.text.isEmpty
                                    ? currentStudent.phone
                                    : _PhoneAddController.value.text.trim(),
                                studentImage: _img.value != ""
                                    ? _img.value
                                    : currentStudent.studentImage,
                              );
                              BlocProvider.of<StudentBloc>(context).add(
                                  EditStudent(modle: model, index: editIndex));

                              _NameAddController.clear();
                              _AgeAddController.clear();
                              _CollegeAddController.clear();
                              _PhoneAddController.clear();
                              _img.value = "";

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("Student Added"),
                                duration: Duration(milliseconds: 700),
                              ));

                              Navigator.of(context).pop();
                            },
                            child: Text("Update Student"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(veryDarkColor),
                              foregroundColor:
                                  MaterialStateProperty.all(veryLightColor),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
