// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SkillsCardWidget extends StatelessWidget {
  final String image;
  final double? height, width;
  const SkillsCardWidget({
    Key? key,
    required this.image, 
    this.height,
    this.width,
  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return SizedBox(
        width: 100,
        height: 100,
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(image , width: width, height: height),
          ),
        ),
       );
  }
}
