import 'package:flutter/material.dart';
import 'package:prime_video/controller/bottombar_provider.dart';
import 'package:provider/provider.dart';


ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidgets extends StatelessWidget {
  const BottomNavigationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedIndexProvider>(  
      builder:(context, value, child) {
        return BottomNavigationBar(
            currentIndex: value.selectedIndex,
            onTap: (index) {
        value.setIndex(index);      
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor:Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.collections,
                  ),
                  label: 'New & Hot'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.emoji_emotions,
                  ),
                  label: 'Fast Laughs'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.download,
                  ),
                  label: 'Downloads'),
            ]);
      },
    );
  }
}