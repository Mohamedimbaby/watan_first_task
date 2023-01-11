
import 'package:flutter/material.dart';
import 'package:task/category/provider/category_provider.dart';
import 'package:task/helper/colors/colors.dart';
import 'package:task/helper/dimensions/paddings.dart';
import 'package:task/helper/styles/text_styles.dart';
import 'package:task/widgets/collapsed_icon.dart';
import 'package:task/widgets/expanded_icon.dart';

class DropDownItem extends StatelessWidget {
  final String title ;
  final int id ;
  const DropDownItem({ required this.title , required this.id, required this.state ,required this.onPressed,Key? key}) : super(key: key);
  final DropDownMenuState state ;
  final  Function () onPressed ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPressed();
      },
      child: Container(
        padding: mediumAll,

        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(8),
            color: Colors.white, boxShadow: [
          BoxShadow(
            offset:  const Offset(0, 3),
            color: shadowColor,
              spreadRadius: 1,blurRadius: 9
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
             Text(title , style: bigHeadlineStyle,),
            state == DropDownMenuState.collapsed ? const CollapsedIcon() :const  ExpandedIcon()
          ],
        ),
      ),
    );
  }
}
