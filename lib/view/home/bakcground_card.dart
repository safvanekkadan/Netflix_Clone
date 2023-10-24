import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/homescreen_provider.dart';
import 'custom_bottom.dart';

class BackgroundCard extends StatefulWidget {
  const BackgroundCard({super.key});

  @override
  State<BackgroundCard> createState() => _BAckgroundCardState();
}

class _BAckgroundCardState extends State<BackgroundCard> {


   @override
  void initState() {
    super.initState();
    Provider.of<HomeBackgroundCardImageProvider>(context,listen: false)
    .initializeBackgroundCard();
  }
  
  @override
  Widget build(BuildContext context) {
    var imageProvider= 
    Provider.of<HomeBackgroundCardImageProvider>(context,);    
     return Stack(
                children: [
                  Container(
                  height: 600,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    image:DecorationImage(
                      image:NetworkImage(imageProvider.imageUrl ??"image not found"),
                      fit: BoxFit.cover
                      ),
                  ),
                  ),
                  const Positioned(
                     bottom: 0,
                     left: 0,
                     right: 0,         
                    child: Padding(
                      padding: EdgeInsets.only(bottom:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [ 
                          CustomBotton(icon:Icons.add ,
                          title: "My List"),
                         PlayButton(),
                         CustomBotton(icon: Icons.info, title:"info")
                         
                        ],
                      ),
                    ),
                  )
                ],
              );
      }
  }


