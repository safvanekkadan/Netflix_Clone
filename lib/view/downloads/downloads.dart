import 'package:flutter/material.dart';
import 'package:prime_video/view/widgets/appbarwidgets.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final  Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize:Size.fromHeight(50),
        child: APPBarWidget(title: "Downloads",)),
      body:ListView(
        children: [
          Row(
            children: [
              Icon(Icons.settings,
              color: Colors.white,),
              Text("Smart Downloads")

            ],
          ),
          Text("Introducing Downloads for you"),
          Text("We will donwload a personalized selction of mvoie and  shows for you, so there is always something to watch on your device"),
          Container(
            width:size.width,
            height: size.height,
            color: Colors.amber,
            child:Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                  radius:size.width * 0.38
                ),
                ),
                Container(
                  width: size.width*0.5,
                  height: size.height* 0.2,
                  color: Colors.black,
                )
              ],
            ) ,
          ),
          MaterialButton(onPressed: (){},
          color: Colors.blue,
          child: const Text("Setup",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold),),
          ),
            MaterialButton(onPressed: (){}, 
          color: Colors.white,
          child: const Text("See what you can download",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold),),
          )
        ],
      )
    );
  }
}