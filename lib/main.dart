import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prime_video/controller/download_trendiinginitial.dart';
import 'package:prime_video/controller/internetconnectivity_provider.dart';
import 'package:prime_video/controller/newandhot_provider.dart';
import 'package:prime_video/controller/searchidle_provider.dart';
import 'package:prime_video/controller/searchquery_provider.dart';
import 'package:prime_video/controller/searchresult_provider.dart';

import 'package:prime_video/view/main_page/main_page.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TrandingMovieInitializeProvider(),),
        ChangeNotifierProvider(
            create:(context) => SearchIdleProvider(), ),
        ChangeNotifierProvider(
          create: (context) => SearchResultProvider(),),
        ChangeNotifierProvider(
          create:(context) => SearchQueryProvider(), ),
          ChangeNotifierProvider(
            create: (context) => InternetConnectivityProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => NewandHotProvider(),)
          
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflix Clone',
        theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent),
         scaffoldBackgroundColor: Colors.black,
         fontFamily: GoogleFonts.montserrat().fontFamily,
         textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white)
         )
        ),
        home:MainScreen(),
      ),
    );
  }
}

