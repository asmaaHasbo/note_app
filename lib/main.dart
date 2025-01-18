import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home_screen/home_screen.dart';

void main() {
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

