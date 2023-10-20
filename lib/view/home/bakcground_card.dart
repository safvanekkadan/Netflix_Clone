import 'package:flutter/material.dart';
import 'package:prime_video/controller/homescreen_provider.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';
import 'custom_bottom.dart';

class BAckgroundCard extends StatelessWidget {
  const BAckgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeBackgroundcardImageProvider>(
      builder: (context, value, child) {
        var imageProvider=Provider.of<HomeBackgroundCardImageProvider>(context); 
     return Stack(
                children: [
                  Container(
                  height: 600,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image:DecorationImage(
                      image:NetworkImage(image) )
                  ),
                  ),
                  Positioned(
                     bottom: 0,
                     left: 0,
                     right: 0,         
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [ 
                          CustomBotton(icon:Icons.add ,
                          title: "My List"),
                         _Playbutton(),
                         CustomBotton(icon: Icons.info, title:"info")
                         
                        ],
                      ),
                    ),
                  )
                ],
              );
      }
    );
  }
  
                   TextButton _Playbutton() {
                return TextButton.icon(onPressed: (){},
                   style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)
                   ), icon:const Icon(Icons.play_arrow,
                   color:  Colors.black,
                   size: 25,
                   ), label: Text("Play",
                   style: TextStyle(fontSize: 20,color: Colors.black),)
                   );
                }
}

mixin HomeBackgroundCardImageProvider {
}