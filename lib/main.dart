import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:touko/add_cubit/simple_bloc_observer.dart';
import 'package:touko/modules/note_model.dart';

import 'add_cubit/add_note_cubit.dart';
import 'core/constant.dart';
import 'features/home_screen/home_screen.dart';

void main() async {
   Bloc.observer = SimpleBlocObserver();
   await Hive.initFlutter();
   Hive.registerAdapter(NoteModelAdapter());
   await Hive.openBox(noteBoxName);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
           BlocProvider(create: (context) => AddNoteCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          textTheme: GoogleFonts.poppinsTextTheme()
        ),

        home:const HomeScreen(),
      ),
    );
  }
}

