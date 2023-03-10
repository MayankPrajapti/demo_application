import 'package:demo_application/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'configure.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:ThemeData(useMaterial3: true, textTheme: GoogleFonts.poppinsTextTheme(),),
      home: const HomeScreen(),
    );
  }
}
