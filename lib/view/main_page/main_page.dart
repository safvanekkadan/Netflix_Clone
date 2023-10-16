import 'package:flutter/material.dart';
import '../downloads/downloads.dart';
import '../fastlaughs/fast_laughs.dart';
import '../home/home_screen.dart';
import '../newandhot/newandhot.dart';
import '../search/search.dart';
import 'widgets/bottom_nav.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final _pages = [
    const HomeScreen(),
    const NewAndHotScreen(),
      FastLaughsScreen( ),
    const SearchScreen(),
     DownloadScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidgets(),
    );
  }
}