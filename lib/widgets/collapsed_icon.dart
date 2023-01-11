import 'package:task/helper/dimensions/paddings.dart';

import 'package:flutter/material.dart';

class ExpandedIcon extends StatelessWidget {
  const ExpandedIcon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle
      ),
      child: const Icon(Icons.keyboard_arrow_down , color: Colors.white,size: 20,),
    );
  }
}
