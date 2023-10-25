import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prime_video/controller/bottombar_provider.dart';
import 'package:prime_video/controller/download_trendiinginitial.dart';
import 'package:prime_video/controller/home_scrollprovider.dart';
import 'package:prime_video/controller/homescreen_provider.dart';
import 'package:prime_video/controller/internetconnectivity_provider.dart';
import 'package:prime_video/controller/newandhot_provider.dart';
import 'package:prime_video/controller/searchidle_provider.dart';
import 'package:prime_video/controller/searchquery_provider.dart';
import 'package:prime_video/controller/searchresult_provider.dart';
import 'package:prime_video/controller/tvtoprate_provider.dart';
import 'package:prime_video/controller/videoplayer_provider.dart';

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
            create:(context) => SearchIDLProvider(), ),
        ChangeNotifierProvider(
          create: (context) => SearchResultProvider(),),
        ChangeNotifierProvider(
          create:(context) => SearchQueryProvider(), ),
          ChangeNotifierProvider(
            create: (context) => InternetConnectivityProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => NewandHotProvider(),),
          ChangeNotifierProvider(
            create:(context) => VideoPlayerProvider(), ),
          ChangeNotifierProvider(
            create:(context) =>HomeBackgroundCardImageProvider() ),
            ChangeNotifierProvider(
            create:(context) =>HomeScrollProvider() ),
            ChangeNotifierProvider(
            create:(context) => TvTopRateProvider()),
            ChangeNotifierProvider(
            create:(context) =>SelectedIndexProvider() ),
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

