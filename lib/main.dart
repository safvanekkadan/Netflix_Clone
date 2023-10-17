import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prime_video/view/main_page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Clone',
      theme: ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
       scaffoldBackgroundColor: Colors.black,
       fontFamily: GoogleFonts.montserrat().fontFamily,
       textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white)
       )
      ),
      home:MainScreen(),
    );
  }
}

