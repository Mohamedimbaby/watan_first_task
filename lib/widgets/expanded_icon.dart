
import 'package:flutter/material.dart';

class CollapsedIcon extends StatelessWidget {
  const CollapsedIcon({Key? key}) : super(key: key);
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
      child: const Icon(Icons.keyboard_arrow_right , color: Colors.white,size: 20,),
    );
  }
}
