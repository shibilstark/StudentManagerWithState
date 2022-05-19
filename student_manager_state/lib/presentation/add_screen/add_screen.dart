import 'package:flutter/material.dart';
import 'package:student_manager_state/common/colors.dart';
import 'package:student_manager_state/common/functions.dart';

enum Type {
  add,
  update,
}

TextEditingController _NameAddController = TextEditingController();
TextEditingController _AgeAddController = TextEditingController();
TextEditingController _CollegeAddController = TextEditingController();
TextEditingController _PhoneAddController = TextEditingController();

class AddScreen extends StatelessWidget {
  final Type type;
  const AddScreen({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Form(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(mediumColor),
                        ),
                        onPressed: () {},
                        child: type == Type.add
                            ? Text("Pick Image")
                            : Text("Update Image"),
                      ),
                      CircleAvatar(
                        backgroundColor: mediumColor,
                        radius: 80,
                      ),
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
                                backgroundColor:
                                    MaterialStateProperty.all(veryDarkColor),
                                foregroundColor:
                                    MaterialStateProperty.all(veryLightColor),
                              ),
                            )
                          : SizedBox(),
                      ElevatedButton(
                        onPressed: () {
                          if (_NameAddController.value.text.trim().isEmpty ||
                              _AgeAddController.value.text.trim().isEmpty ||
                              _CollegeAddController.value.text.trim().isEmpty ||
                              _PhoneAddController.value.text.trim().isEmpty) {
                          } else {
                            if (type == Type.add) {
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
