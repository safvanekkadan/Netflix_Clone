import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'widgets/comingsoon.dart';
import 'widgets/everyone_watching.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:PreferredSize(
          preferredSize:const Size.fromHeight(80) , 
          child: AppBar(
            title: const Text("New & Hot",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            actions: [
             const Icon(Icons.cast,
          color: Colors.white,
          size: 30,),
          kWidth,
          SizedBox(
            height: 30,
            width: 40,
            
            child :Image.network("https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"),
          ),
          kWidth,
          ],
        
          bottom:TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            labelStyle: const TextStyle(fontSize:16,fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),      
          tabs: const [
            Tab(
              text:"🍿Coming Soon"),
              Tab(
                text: "👀 Everyone's Watching",
              ),
          ],
          )),
        ),
         
        body:TabBarView(
            children: [_buildComingSoon(context),
             _BuildEveryonesWatching()
             ],
          )),
    );
  }
}


Widget _BuildEveryonesWatching() {
  return const EveryonesWatchingWidget();
}

Widget _buildComingSoon(BuildContext context) {
  return const ComingSoonWidget();
    }

  