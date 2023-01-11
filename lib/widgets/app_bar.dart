import 'package:flutter/material.dart';
import 'package:task/helper/colors/colors.dart';
import 'package:task/helper/styles/text_styles.dart';

class AppBarWidget extends AppBar {
  final bool hasBackAction ;
  final String headline ;


  AppBarWidget({required this.hasBackAction,required this.headline, Key? key}) : super(key: key,
      leading: hasBackAction ? Icon(Icons.arrow_back_ios , color: textColor,): const SizedBox() ,
      title: Text(headline , style: bigHeadlineStyle,),
      backgroundColor: Colors.white,centerTitle: true,elevation: 0

  );



}
