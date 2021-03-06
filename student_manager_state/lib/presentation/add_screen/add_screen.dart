import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_manager_state/application/bloc/student_bloc.dart';
import 'package:student_manager_state/common/colors.dart';
import 'package:student_manager_state/common/functions.dart';
import 'package:student_manager_state/domain/model.dart';

enum Type {
  add,
  update,
}

Future<String> pickImage() async {
  final _image = await ImagePicker().pickImage(source: ImageSource.camera);
  if (_image?.path == null) return "";

  return _image!.path;
}

ValueNotifier<bool> empty = ValueNotifier(false);
ValueNotifier<String> img = ValueNotifier("");

TextEditingController _NameAddController = TextEditingController();
TextEditingController _AgeAddController = TextEditingController();
TextEditingController _CollegeAddController = TextEditingController();
TextEditingController _PhoneAddController = TextEditingController();

class AddScreen extends StatelessWidget {
  final Type type;
  int? editIndex;
  AddScreen({Key? key, required this.type, int? this.editIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (type == Type.update) {}
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Form(
              child: BlocBuilder<StudentBloc, StudentState>(
                builder: (context, state) {
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
                              img.value = await pickImage();
                              img.notifyListeners();
                            },
                            child: type == Type.add
                                ? Text("Pick Image")
                                : Text("Update Image"),
                          ),
                          ValueListenableBuilder(
                              valueListenable: img,
                              builder: (BuildContext context, dynamic img,
                                  Widget? child) {
                                return img == ""
                                    ? CircleAvatar(
                                        backgroundColor: mediumColor,
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
                          hintText: "Student Name",
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
                          hintText: "Age",
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
                          hintText: "College",
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
                          hintText: "Phone No",
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
                        valueListenable: empty,
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
                        mainAxisAlignment: type == Type.add
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.spaceBetween,
                        children: [
                          type == Type.update
                              ? ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Cancel"),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        veryDarkColor),
                                    foregroundColor: MaterialStateProperty.all(
                                        veryLightColor),
                                  ),
                                )
                              : SizedBox(),
                          ElevatedButton(
                            onPressed: () async {
                              if (_NameAddController.value.text
                                      .trim()
                                      .isEmpty ||
                                  _AgeAddController.value.text.trim().isEmpty ||
                                  _CollegeAddController.value.text
                                      .trim()
                                      .isEmpty ||
                                  _PhoneAddController.value.text
                                      .trim()
                                      .isEmpty ||
                                  img.value.isEmpty) {
                                empty.value = true;
                                empty.notifyListeners();
                              } else {
                                empty.value = false;
                                empty.notifyListeners();
                                if (type == Type.add) {
                                  final model = StudentModel(
                                      name:
                                          _NameAddController.value.text.trim(),
                                      age: _AgeAddController.value.text.trim(),
                                      college: _CollegeAddController.value.text
                                          .trim(),
                                      phone:
                                          _PhoneAddController.value.text.trim(),
                                      studentImage: img.value);
                                  BlocProvider.of<StudentBloc>(context)
                                      .add(AddStudent(model: model));

                                  _NameAddController.clear();
                                  _AgeAddController.clear();
                                  _CollegeAddController.clear();
                                  _PhoneAddController.clear();
                                  img.value = "";

                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Student Added"),
                                    duration: Duration(milliseconds: 700),
                                  ));
                                  print(state.allStudents.length);
                                } else {}
                              }
                            },
                            child: type == Type.add
                                ? Text("Add Student")
                                : Text("Update Student"),
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
