// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/core/styles/app_text_style.dart';

class ButtonAppBar extends StatelessWidget {
  final void Function() onPressed;
  final String label;
  
  
  const ButtonAppBar({
    Key? key,
    required this.onPressed,
    required this.label,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(
            color: Colors.black),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: context.textStyle.bodyMedium,
      ),
    );
  }
}
