import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_manager_state/application/bloc/student_bloc.dart';
import 'package:student_manager_state/common/colors.dart';
import 'package:student_manager_state/common/styles.dart';
import 'package:student_manager_state/presentation/add_screen/add_screen.dart';
import 'package:student_manager_state/presentation/home/home_screen.dart';

ValueNotifier<int> _currentNavIndex = ValueNotifier(0);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _currentNavIndex,
      builder: (BuildContext context, int cInd, Widget? child) {
        return Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(55),
              child: CommonAppBar(
                title: "Home",
              )),
          bottomNavigationBar: const MyCustomBottomNavigationBar(),
          backgroundColor: veryLightColor,
          body: _pages[_currentNavIndex.value],
        );
      },
    );
  }
}

class CommonAppBar extends StatelessWidget {
  final String title;
  const CommonAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: veryDarkColor,
      title: Text(
        title,
        style: titleStyle,
      ),
    );
  }
}

final _pages = [
  const HomeScreen(),
  AddScreen(
    type: Type.add,
  )
];

class MyCustomBottomNavigationBar extends StatelessWidget {
  const MyCustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _currentNavIndex,
      builder: (BuildContext context, int cInd, Widget? child) {
        return BottomNavigationBar(
          currentIndex: _currentNavIndex.value,
          onTap: (value) {
            _currentNavIndex.value = value;

            _currentNavIndex.notifyListeners();
          },
          backgroundColor: veryDarkColor,
          // selectedIconTheme: IconThemeData(
          //   color: veryLightColor,
          //   size: 30,
          // ),
          selectedFontSize: 13,
          unselectedFontSize: 11,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          elevation: 2,

          selectedItemColor: veryLightColor,
          unselectedItemColor: vlcOpacitic,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              activeIcon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_outlined),
              activeIcon: Icon(Icons.add_rounded),
              label: "Add Student",
            )
          ],
        );
      },
    );
  }
}
