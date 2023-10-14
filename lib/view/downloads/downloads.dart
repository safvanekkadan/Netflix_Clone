import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prime_video/view/widgets/appbarwidgets.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({Key?key}):super(key: key);

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
          Section2(),
          const Section3(),
        ],
      )
    );
  }
}
class Section2 extends StatelessWidget {
   Section2({super.key});
  final List imagelist =[
     "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8qBylBsQf4llkGrWR3qAsOtOU8O.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8qBylBsQf4llkGrWR3qAsOtOU8O.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8qBylBsQf4llkGrWR3qAsOtOU8O.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final  Size size = MediaQuery.of(context).size;
    return Column(
      children: [
         Padding(
           padding: const EdgeInsets.symmetric(vertical:20),
           child: const Text("Introducing Downloads for you",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),),
         ),
          const SizedBox(height: 10),
          const Text("We will donwload a personalized selction of\n mvoie and  shows for you, so there is always\n something to watch on your \ndevice",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
          SizedBox(
            width:size.width,
            height: size.height *0.6,
            //color: Colors.amber,
            child:Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                  radius:size.width * 0.40
                ),
                ),
                Downloadimagewidget(
                  imagelist: imagelist[0], 
                  margin:const EdgeInsets.only(left: 130,bottom: 50),
                  angle: 20,
                  size: Size(size.width *0.4,size.height*0.30),
                  ),
                  Downloadimagewidget(
                  imagelist: imagelist[1], 
                  margin:const EdgeInsets.only(right: 130,bottom: 50),
                  angle: -20,
                  size: Size(size.width *0.4,size.height*0.30)
                  ),
                  Downloadimagewidget(
                  imagelist: imagelist[2], 
                  margin:const EdgeInsets.only(bottom:10),
                  size: Size(size.width *0.45,size.height*0.34)
                  ),
              ],
            ) ,
          ),

      ],
      )  ;
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(onPressed: (){},
            
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular (5),
                side: const BorderSide(color: Colors.black38)
              ),
            
            color: Colors.blue,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("Setup",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold),),
            ),
            ),
        ),
        SizedBox(
          height: 5,
        ),
            SizedBox(
              width: double.infinity,
              child: MaterialButton(onPressed: (){}, 
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Colors.black38)
              ),
                      
                      child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("See what you can download",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold),),
                      ),
                      ),
            )

      ],
    );
  }
}
class Downloadimagewidget extends StatelessWidget {
  const Downloadimagewidget({
    Key?key,
    this.angle=0,
    required this.imagelist,
    required this.margin,
    required this.size
  }):super(key: key);

  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    
    return Transform.rotate(
      angle:angle * pi/180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15) ,
          image: DecorationImage(
            fit: BoxFit.cover,
            image:NetworkImage(
              imagelist,
            ),
            ),
        ),
      ),
    );
  }
}