// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/core/styles/app_colors.dart';
import 'package:portfolio/core/styles/app_text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final Widget icon;
  final void Function() onPressed;
  final double? width;

  const CustomElevatedButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.width = 180,
  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return SizedBox(
            width: width,
            height: 40,
            child: ElevatedButton.icon(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colors.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(10.0),
              ),
              label: Text(
                label,
                style: context.textStyle.textStyleButton
              ),
              icon: icon,
            ),
          );
  }
}
