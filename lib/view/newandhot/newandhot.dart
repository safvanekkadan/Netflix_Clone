import 'package:flutter/material.dart';
import '../constants/constants.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:PreferredSize(
          preferredSize:Size.fromHeight(80) , 
          child: AppBar(
            title: Text("New & Hot",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            actions: [
             const Icon(Icons.cast,
          color: Colors.white,
          size: 30,),
          kWidth,
          Container(
            height: 30,
            width: 40,
            color: Colors.blue,
          ),
          kWidth,
          ],
        
          bottom:TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize:16,fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),      
          tabs: [
            Tab(
              text:"🍿Coming Soon"),
              Tab(
                text: "👀 Everyone's Watching",
              ),
          ],
          )),
        ),
         
        body:
         TabBarView(children: [
          _buildComingsoon(context),
          _buildEveryonewatcing()
        ])
      ),
    );
  }

}

_buildComingsoon(BuildContext context) {
  Size size =MediaQuery.of(context).size;
     return ListView(
      
      children: [
        kHieght,
        Row(
          
          children: [
            SizedBox(
              width: 50,
            ),
            Container(
              height: 500,
              width:size.width-50,
              color: Colors.amber,
            ),
          ],
        )
      ],
     );

}
_buildEveryonewatcing() {
  return SizedBox();
}



          