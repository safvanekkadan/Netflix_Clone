import 'package:flutter/material.dart';

// ignore: camel_case_types
class videoWidget extends StatelessWidget {
  final String? videoImage;
  const videoWidget({
    super.key,
    this.videoImage
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.network('$videoImage',
          fit: BoxFit.fill,),
        ),
        
        Positioned(
          right: 0,
          bottom: 0,
          child: IconButton(onPressed: (){},
                       icon:const Icon(Icons.volume_off_outlined,color: Colors.white,
                       size: 25,)),
        ),
      ],
    );
  }
}