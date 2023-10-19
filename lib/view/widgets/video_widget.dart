import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/constants.dart';

class videoWidget extends StatelessWidget {
  const videoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(newhottembimage,
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