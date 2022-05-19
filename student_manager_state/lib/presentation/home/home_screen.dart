import 'package:flutter/material.dart';
import 'package:student_manager_state/common/colors.dart';
import 'package:student_manager_state/common/styles.dart';
import 'package:student_manager_state/presentation/inner_screen.dart/inner_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {});
    return Container(
      child: Scaffold(
        body: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return const StudentTile();
          },
          separatorBuilder: (context, index) => const Divider(
            color: veryDarkColor,
            thickness: 0.5,
          ),
          itemCount: 20,
        ),
      ),
    );
  }
}

class StudentTile extends StatelessWidget {
  const StudentTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => InnerScreen()));
      },
      title: const Text(
        "Student Name",
        style: studentNameStyle,
      ),
      leading: const CircleAvatar(
        backgroundColor: mediumColor,
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.delete,
            color: mediumColor,
          )),
    );
  }
}
