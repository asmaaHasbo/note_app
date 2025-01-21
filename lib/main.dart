import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:touko/modules/note_model.dart';

import 'core/constant.dart';
import 'features/home_screen/home_screen.dart';

void main() async {
   await Hive.initFlutter();
   await Hive.openBox(noteBoxName);
   Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.poppinsTextTheme()
      ),

      home:const HomeScreen(),
    );
  }
}

