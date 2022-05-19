import 'package:flutter/material.dart';
import 'package:student_manager_state/common/colors.dart';
import 'package:student_manager_state/common/functions.dart';
import 'package:student_manager_state/common/styles.dart';
import 'package:student_manager_state/presentation/add_screen/add_screen.dart';
import 'package:student_manager_state/presentation/main/main_screen.dart';

final studentInnerStyle = TextStyle(
  color: veryDarkColor,
  fontSize: 18,
  fontWeight: FontWeight.w500,
);

class InnerScreen extends StatelessWidget {
  const InnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppBar(title: ""),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
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
                ),
              ],
            ),
            Gap(
              H: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  color: vlcOpacitic, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: const [
                    InnerTile(title: "Student Name", value: "The Value"),
                    Gap(
                      H: 25,
                    ),
                    InnerTile(title: "Age", value: "The Value"),
                    Gap(
                      H: 25,
                    ),
                    InnerTile(title: "College", value: "The Value"),
                    Gap(
                      H: 25,
                    ),
                    InnerTile(title: "Phone No", value: "The Value"),
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
                      builder: (ctx) => AddScreen(
                            type: Type.update,
                          )));
                },
                child: Icon(Icons.edit),
              ),
            )
          ],
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
