import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          height: 200,
          child: Image.network('$videoImage',
          fit: BoxFit.cover,),
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