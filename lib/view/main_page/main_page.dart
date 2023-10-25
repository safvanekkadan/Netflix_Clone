import 'package:flutter/material.dart';
import 'package:prime_video/controller/bottombar_provider.dart';
import 'package:provider/provider.dart';
import '../downloads/downloads.dart';
import '../fastlaughs/fast_laughs.dart';
import '../home/home_screen.dart';
import '../newandhot/newandhot.dart';
import '../search/search.dart';
import 'widgets/bottom_nav.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final pages = [
    const HomeScreen(),
    const NewAndHotScreen(),
      const FastLaughsScreen(),
    const SearchScreen(),
     const DownloadScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<SelectedIndexProvider>(
          builder: (context, value,child) {
            return value.selectedIndex < pages.length
                ? pages[value.selectedIndex]
                : const Center(child: Text("Not Found"));
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidgets(),
    );
  }
}