import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_manager_state/application/bloc/student_bloc.dart';
import 'package:student_manager_state/domain/core/injectable.dart';
import 'package:student_manager_state/domain/model.dart';
import 'package:student_manager_state/presentation/main/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<StudentBloc>(),
        ),
      ],
      child: const MaterialApp(
        // theme: ThemeData(backgroundColor: veryLightColor),
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
